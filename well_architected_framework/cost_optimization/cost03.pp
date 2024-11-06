locals {
  well_architected_framework_cost03_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "monitor-usage"
  })
}

benchmark "well_architected_framework_cost03" {
  title       = "COST03 How do you monitor your cost and usage?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost03_bp01,
    benchmark.well_architected_framework_cost03_bp02,
    benchmark.well_architected_framework_cost03_bp03,
    benchmark.well_architected_framework_cost03_bp04,
    benchmark.well_architected_framework_cost03_bp05,
    benchmark.well_architected_framework_cost03_bp06
  ]

  tags = local.well_architected_framework_cost03_common_tags
}

benchmark "well_architected_framework_cost03_bp01" {
  title       = "BP01 Configure detailed information sources"
  description = "Set up cost management and reporting tools for enhanced analysis and transparency of cost and usage data. Configure your workload to create log entries that facilitate the tracking and segregation of costs and usage."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost03_common_tags, {
    choice_id = "cost_monitor_usage_detailed_source"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost03_bp02" {
  title       = "BP02 Identify cost attribution categories"
  description = "Identify organization categories such as business units, departments or projects that could be used to allocate cost within your organization to the internal consuming entities. Use those categories to enforce spend accountability, create cost awareness and drive effective consumption behaviors."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost03_common_tags, {
    choice_id = "cost_monitor_usage_define_attribution"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost03_bp03" {
  title       = "BP03 Establish organization metrics"
  description = "Establish the organization metrics that are required for this workload. Example metrics of a workload are customer reports produced, or web pages served to customers."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost03_common_tags, {
    choice_id = "cost_monitor_usage_define_kpi"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost03_bp04" {
  title       = "BP04 Configure billing and cost management tools"
  description = "Configure cost management tools in line with your organization policies to manage and optimize cloud spend. This includes services, tools, and resources to organize and track cost and usage data, enhance control through consolidated billing and access permission, improve planning through budgeting and forecasts, receive notifications or alerts, and further lower cost with resources and pricing optimizations."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost03_common_tags, {
    choice_id = "cost_monitor_usage_config_tools"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost03_bp05" {
  title       = "BP05 Add organization information to cost and usage"
  description = "Define a tagging schema based on your organization, workload attributes, and cost allocation categories so that you can filter and search for resources or monitor cost and usage in cost management tools. Implement consistent tagging across all resources where possible by purpose, team, environment, or other criteria relevant to your business."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost03_common_tags, {
    choice_id = "cost_monitor_usage_org_information"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost03_bp06" {
  title       = "BP06 Allocate costs based on workload metrics"
  description = "Allocate the workload's costs based on usage metrics or business outcomes to measure workload cost efficiency. Implement a process to analyze the cost and usage data with analytics services, which can provide insight and charge back capability."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost03_common_tags, {
    choice_id = "cost_monitor_usage_allocate_outcome"
    risk      = "UNANSWERED"
  })
}