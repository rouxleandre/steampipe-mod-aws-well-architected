locals {
  well_architected_framework_rel10_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "fault-isolation"
  })
}

benchmark "well_architected_framework_rel10" {
  title       = "REL10 How do you use fault isolation to protect your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel10_bp01,
    benchmark.well_architected_framework_rel10_bp02,
    benchmark.well_architected_framework_rel10_bp03,
    benchmark.well_architected_framework_rel10_bp04
  ]

  tags = local.well_architected_framework_rel10_common_tags
}

benchmark "well_architected_framework_rel10_bp01" {
  title       = "BP01 Deploy the workload to multiple locations"
  description = "Distribute workload data and resources across multiple Availability Zones or, where necessary, across AWS Regions. These locations can be as diverse as required."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel10_common_tags, {
    choice_id = "rel_fault_isolation_multiaz_region_system"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel10_bp02" {
  title       = "BP02 Select the appropriate locations for your multi-location deployment"
  description = "For high availability, always (when possible) deploy your workload components to multiple Availability Zones (AZs). For workloads with extreme resilience requirements, carefully evaluate the options for a multi-Region architecture."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel10_common_tags, {
    choice_id = "rel_fault_isolation_select_location"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel10_bp03" {
  title       = "BP03 Use bulkhead architectures to limit scope of impact"
  description = "Implement bulkhead architectures (also known as cell-based architectures) to restrict the effect of failure within a workload to a limited number of components."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel10_common_tags, {
    choice_id = "rel_fault_isolation_use_bulkhead"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel10_bp04" {
  title       = "BP04 Automate recovery for components constrained to a single location"
  description = "If components of the workload can only run in a single Availability Zone or in an on-premises data center, implement the capability to do a complete rebuild of the workload within your defined recovery objectives."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel10_common_tags, {
    choice_id = "rel_fault_isolation_single_az_system"
    risk      = "UNANSWERED"
  })
}