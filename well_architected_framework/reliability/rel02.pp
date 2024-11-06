locals {
  well_architected_framework_rel02_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "planning-network-topology"
  })
}

benchmark "well_architected_framework_rel02" {
  title       = "REL02 How do you plan your network topology?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel02_bp01,
    benchmark.well_architected_framework_rel02_bp02,
    benchmark.well_architected_framework_rel02_bp03,
    benchmark.well_architected_framework_rel02_bp04,
    benchmark.well_architected_framework_rel02_bp05
  ]

  tags = local.well_architected_framework_rel02_common_tags
}

benchmark "well_architected_framework_rel02_bp01" {
  title       = "BP01 Use highly available network connectivity for your workload public endpoints"
  description = "Building highly available network connectivity to public endpoints of your workloads can help you reduce downtime due to loss of connectivity and improve the availability and SLA of your workload. To achieve this, use highly available DNS, content delivery networks (CDNs), API gateways, load balancing, or reverse proxies."

  children = [
    aws_compliance.control.cloudfront_distribution_configured_with_origin_failover,
    aws_compliance.control.cloudfront_distribution_waf_enabled,
    aws_compliance.control.elb_application_gateway_network_lb_multiple_az_configured,
    aws_compliance.control.elb_classic_lb_cross_zone_load_balancing_enabled,
    aws_compliance.control.elb_classic_lb_multiple_az_configured,
    aws_compliance.control.lambda_function_multiple_az_configured,
    aws_compliance.control.rds_db_cluster_multiple_az_enabled,
    aws_compliance.control.rds_db_instance_multiple_az_enabled,
    aws_compliance.control.s3_bucket_cross_region_replication_enabled
  ]

  tags = merge(local.well_architected_framework_rel02_common_tags, {
    choice_id = "rel_planning_network_topology_ha_conn_users"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel02_bp02" {
  title       = "BP02 Provision redundant connectivity between private networks in the cloud and on-premises environments"
  description = "Implement redundancy in your connections between private networks in the cloud and on-premises environments to achieve connectivity resilience. This can be accomplished by deploying two or more links and traffic paths, preserving connectivity in the event of network failures."

  children = [
    aws_compliance.control.ec2_instance_in_vpc,
    aws_compliance.control.ecs_cluster_instance_in_vpc,
    aws_compliance.control.es_domain_in_vpc,
    aws_compliance.control.lambda_function_in_vpc,
    aws_compliance.control.redshift_cluster_enhanced_vpc_routing_enabled,
    aws_compliance.control.vpc_vpn_tunnel_up
  ]

  tags = merge(local.well_architected_framework_rel02_common_tags, {
    choice_id = "rel_planning_network_topology_ha_conn_private_networks"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel02_bp03" {
  title       = "BP03 Ensure IP subnet allocation accounts for expansion and availability"
  description = "Amazon VPC IP address ranges must be large enough to accommodate workload requirements, including factoring in future expansion and allocation of IP addresses to subnets across Availability Zones. This includes load balancers, EC2 instances, and container-based applications."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel02_common_tags, {
    choice_id = "rel_planning_network_topology_ip_subnet_allocation"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel02_bp04" {
  title       = "BP04 Prefer hub-and-spoke topologies over many-to-many mesh"
  description = "When connecting multiple private networks, such as Virtual Private Clouds (VPCs) and on-premises networks, opt for a hub-and-spoke topology over a meshed one. Unlike meshed topologies, where each network connects directly to the others and increases the complexity and management overhead, the hub-and-spoke architecture centralizes connections through a single hub. This centralization simplifies the network structure and enhances its operability, scalability, and control."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel02_common_tags, {
    choice_id = "rel_planning_network_topology_prefer_hub_and_spoke"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel02_bp05" {
  title       = "BP05 Enforce non-overlapping private IP address ranges in all private address spaces where they are connected"
  description = "The IP address ranges of each of your VPCs must not overlap when peered, connected via Transit Gateway, or connected over VPN. Avoid IP address conflicts between a VPC and on-premises environments or with other cloud providers that you use. You must also have a way to allocate private IP address ranges when needed. An IP address management (IPAM) system can help with automating this."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel02_common_tags, {
    choice_id = "rel_planning_network_topology_non_overlap_ip"
    risk      = "UNANSWERED"
  })
}