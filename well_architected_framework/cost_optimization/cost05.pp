locals {
  well_architected_framework_cost05_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "select-service"
  })
}

benchmark "well_architected_framework_cost05" {
  title       = "COST05 How do you evaluate cost when you select services?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost05_bp01,
    benchmark.well_architected_framework_cost05_bp02,
    benchmark.well_architected_framework_cost05_bp03,
    benchmark.well_architected_framework_cost05_bp04,
    benchmark.well_architected_framework_cost05_bp05,
    benchmark.well_architected_framework_cost05_bp06
  ]

  tags = local.well_architected_framework_cost05_common_tags
}

benchmark "well_architected_framework_cost05_bp01" {
  title       = "BP01 Identify organization requirements for cost"
  description = "Work with team members to define the balance between cost optimization and other pillars, such as performance and reliability, for this workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost05_common_tags, {
    choice_id = "cost_select_service_requirements"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost05_bp02" {
  title       = "BP02 Analyze all components of this workload"
  description = "Verify every workload component is analyzed, regardless of current size or current costs. The review effort should reflect the potential benefit, such as current and projected costs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost05_common_tags, {
    choice_id = "cost_select_service_analyze_all"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost05_bp03" {
  title       = "BP03 Perform a thorough analysis of each component"
  description = "Look at overall cost to the organization of each component. Calculate the total cost of ownership by factoring in cost of operations and management, especially when using managed services by cloud provider. The review effort should reflect potential benefit (for example, time spent analyzing is proportional to component cost)."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost05_common_tags, {
    choice_id = "cost_select_service_thorough_analysis"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost05_bp04" {
  title       = "BP04 Select components of this workload to optimize cost in line with organization priorities"
  description = "Factor in cost when selecting all components for your workload. This includes using application level and managed services or serverless, containers, or event-driven architecture to reduce overall cost. Minimize license costs by using open-source software, software that does not have license fees, or alternatives to reduce spending."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost05_common_tags, {
    choice_id = "cost_select_service_select_for_cost"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost05_bp05" {
  title       = "BP05 Perform cost analysis for different usage over time"
  description = "Workloads can change over time. Some services or features are more cost effective at different usage levels. By performing the analysis on each component over time and at projected usage, the workload remains cost-effective over its lifetime."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost05_common_tags, {
    choice_id = "cost_select_service_analyze_over_time"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost05_bp06" {
  title       = "BP06 Select software with cost effective licensing"
  description = "Open-source software eliminates software licensing costs, which can contribute significant costs to workloads. Where licensed software is required, avoid licenses bound to arbitrary attributes such as CPUs, look for licenses that are bound to output or outcomes. The cost of these licenses scales more closely to the benefit they provide."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost05_common_tags, {
    choice_id = "cost_select_service_licensing"
    risk      = "UNANSWERED"
  })
}