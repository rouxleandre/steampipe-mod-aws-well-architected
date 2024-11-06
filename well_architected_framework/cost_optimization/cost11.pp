locals {
  well_architected_framework_cost11_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "evaluate-cost-effort"
  })
}

benchmark "well_architected_framework_cost11" {
  title       = "COST11 How do you evaluate the cost of effort?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost11_bp01
  ]

  tags = local.well_architected_framework_cost11_common_tags
}

benchmark "well_architected_framework_cost11_bp01" {
  title       = "BP01 Perform automation for operations"
  description = "Evaluate the operational costs on the cloud, focusing on quantifying the time and effort savings in administrative tasks, deployments, mitigating the risk of human errors, compliance, and other operations through automation. Assess the time and associated costs required for operational efforts and implement automation for administrative tasks to minimize manual effort wherever feasible."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost11_common_tags, {
    choice_id = "cost_evaluate_cost_effort_automations_operations"
    risk      = "UNANSWERED"
  })
}