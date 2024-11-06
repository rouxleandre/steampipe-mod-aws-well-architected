locals {
  well_architected_framework_cost02_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "govern-usage"
  })
}

benchmark "well_architected_framework_cost02" {
  title       = "COST02 How do you govern usage?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost02_bp01,
    benchmark.well_architected_framework_cost02_bp02,
    benchmark.well_architected_framework_cost02_bp03,
    benchmark.well_architected_framework_cost02_bp04,
    benchmark.well_architected_framework_cost02_bp05,
    benchmark.well_architected_framework_cost02_bp06
  ]

  tags = local.well_architected_framework_cost02_common_tags
}

benchmark "well_architected_framework_cost02_bp01" {
  title       = "BP01 Develop policies based on your organization requirements"
  description = "Develop policies that define how resources are managed by your organization and inspect them periodically. Policies should cover the cost aspects of resources and workloads, including creation, modification, and decommissioning over a resource’s lifetime."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost02_common_tags, {
    choice_id = "cost_govern_usage_policies"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost02_bp02" {
  title       = "BP02 Implement goals and targets"
  description = "Implement both cost and usage goals and targets for your workload. Goals provide direction to your organization on expected outcomes, and targets provide specific measurable outcomes to be achieved for your workloads."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost02_common_tags, {
    choice_id = "cost_govern_usage_goal_target"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost02_bp03" {
  title       = "BP03 Implement an account structure"
  description = "Implement a structure of accounts that maps to your organization. This assists in allocating and managing costs throughout your organization."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost02_common_tags, {
    choice_id = "cost_govern_usage_account_structure"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost02_bp04" {
  title       = "BP04 Implement cost controls"
  description = "Implement controls based on organization policies and defined groups and roles. These certify that costs are only incurred as defined by organization requirements such as control access to regions or resource types."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost02_common_tags, {
    choice_id = "cost_govern_usage_controls"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost02_bp05" {
  title       = "BP05 Implement groups and role"
  description = "Implement groups and roles that align to your policies and control who can create, modify, or decommission instances and resources in each group. For example, implement development, test, and production groups. This applies to AWS services and third-party solutions."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost02_common_tags, {
    choice_id = "cost_govern_usage_groups_roles"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost02_bp06" {
  title       = "BP06 Track project lifecycle"
  description = "Track, measure, and audit the lifecycle of projects, teams, and environments to avoid using and paying for unnecessary resources."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost02_common_tags, {
    choice_id = "cost_govern_usage_track_lifecycle"
    risk      = "UNANSWERED"
  })
}