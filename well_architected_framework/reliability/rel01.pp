locals {
  well_architected_framework_rel01_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "manage-service-limits"
  })
}

benchmark "well_architected_framework_rel01" {
  title       = "REL01 How do you manage service quotas and constraints?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel01_bp01,
    benchmark.well_architected_framework_rel01_bp02,
    benchmark.well_architected_framework_rel01_bp03,
    benchmark.well_architected_framework_rel01_bp04,
    benchmark.well_architected_framework_rel01_bp05,
    benchmark.well_architected_framework_rel01_bp06
  ]

  tags = local.well_architected_framework_rel01_common_tags
}

benchmark "well_architected_framework_rel01_bp01" {
  title       = "BP01 Aware of service quotas and constraints"
  description = "Be aware of your default quotas and manage your quota increase requests for your workload architecture. Know which cloud resource constraints, such as disk or network, are potentially impactful."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel01_common_tags, {
    choice_id = "rel_manage_service_limits_aware_quotas_and_constraints"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel01_bp02" {
  title       = "BP02 Manage service quotas across accounts and Regions"
  description = "If you are using multiple accounts or Regions, request the appropriate quotas in all environments in which your production workloads run."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel01_common_tags, {
    choice_id = "rel_manage_service_limits_limits_considered"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel01_bp03" {
  title       = "BP03 Accommodate fixed service quotas and constraints through architecture"
  description = "Be aware of unchangeable service quotas, service constraints, and physical resource limits. Design architectures for applications and services to prevent these limits from impacting reliability."

  children = [
    aws_compliance.control.lambda_function_concurrent_execution_limit_configured
  ]

  tags = merge(local.well_architected_framework_rel01_common_tags, {
    choice_id = "rel_manage_service_limits_aware_fixed_limits"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel01_bp04" {
  title       = "BP04 Monitor and manage quotas"
  description = "Evaluate your potential usage and increase your quotas appropriately, allowing for planned growth in usage."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel01_common_tags, {
    choice_id = "rel_manage_service_limits_monitor_manage_limits"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel01_bp05" {
  title       = "BP05 Automate quota management"
  description = "Implement tools to alert you when thresholds are being approached. You can automate quota increase requests by using AWS Service Quotas APIs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel01_common_tags, {
    choice_id = "rel_manage_service_limits_automated_monitor_limits"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel01_bp06" {
  title       = "BP06 Ensure that a sufficient gap exists between the current quotas and the maximum usage to accommodate failover"
  description = "When a resource fails or is inaccessible, that resource might still be counted against a quota until it’s successfully terminated. Verify that your quotas cover the overlap of failed or inaccessible resources and their replacements. You should consider use cases like network failure, Availability Zone failure, or Regional failures when calculating this gap."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel01_common_tags, {
    choice_id = "rel_manage_service_limits_suff_buffer_limits"
    risk      = "UNANSWERED"
  })
}