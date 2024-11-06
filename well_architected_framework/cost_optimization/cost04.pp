locals {
  well_architected_framework_cost04_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "decomissioning-resources"
  })
}

benchmark "well_architected_framework_cost04" {
  title       = "COST04 How do you decommission resources?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost04_bp01,
    benchmark.well_architected_framework_cost04_bp02,
    benchmark.well_architected_framework_cost04_bp03,
    benchmark.well_architected_framework_cost04_bp04,
    benchmark.well_architected_framework_cost04_bp05
  ]

  tags = local.well_architected_framework_cost04_common_tags
}

benchmark "well_architected_framework_cost04_bp01" {
  title       = "BP01 Track resources over their life time"
  description = "Define and implement a method to track resources and their associations with systems over their lifetime. You can use tagging to identify the workload or function of the resource."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost04_common_tags, {
    choice_id = "cost_decomissioning_resources_track"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost04_bp02" {
  title       = "BP02 Implement a decommissioning process"
  description = "Implement a process to identify and decommission unused resources."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost04_common_tags, {
    choice_id = "cost_decomissioning_resources_implement_process"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost04_bp03" {
  title       = "BP03 Decommission resources"
  description = "Decommission resources triggered by events such as periodic audits, or changes in usage. Decommissioning is typically performed periodically and can be manual or automated."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost04_common_tags, {
    choice_id = "cost_decomissioning_resources_decommission"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost04_bp04" {
  title       = "BP04 Enforce data retention policies"
  description = "Define data retention policies on supported resources to handle object deletion per your organizations’ requirements. Identify and delete unnecessary or orphaned resources and objects that are no longer required."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost04_common_tags, {
    choice_id = "cost_decomissioning_resources_data_retention"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost04_bp05" {
  title       = "BP05 Decommission resources automatically"
  description = "Design your workload to gracefully handle resource termination as you identify and decommission non-critical resources, resources that are not required, or resources with low utilization."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost04_common_tags, {
    choice_id = "cost_decomissioning_resources_decomm_automated"
    risk      = "UNANSWERED"
  })
}