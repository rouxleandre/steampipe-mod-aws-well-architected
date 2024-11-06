locals {
  well_architected_framework_ops09_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "operations-health"
  })
}

benchmark "well_architected_framework_ops09" {
  title       = "OPS09 How do you understand the health of your operations?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops09_bp01,
    benchmark.well_architected_framework_ops09_bp02,
    benchmark.well_architected_framework_ops09_bp03
  ]

  tags = local.well_architected_framework_ops09_common_tags
}

benchmark "well_architected_framework_ops09_bp01" {
  title       = "BP01 Measure operations goals and KPIs with metrics"
  description = "Obtain goals and KPIs that define operations success from your organization and determine that metrics that reflect these. Set baselines as a point of reference and reevaluate regularly. Develop mechanisms to collect these metrics from teams for evaluation."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops09_common_tags, {
    choice_id = "ops_operations_health_measure_ops_goals_kpis"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops09_bp02" {
  title       = "BP02 Communicate status and trends to ensure visibility into operation"
  description = "Knowing the state of your operations and its trending direction is necessary to identify when outcomes may be at risk, whether or not added work can be supported, or the effects that changes have had to your teams. During operations events, having status pages that users and operations teams can refer to for information can reduce pressure on communication channels and disseminate information proactively"

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops09_common_tags, {
    choice_id = "ops_operations_health_communicate_status_trends"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops09_bp03" {
  title       = "BP03 Review operations metrics and prioritize improvement"
  description = "Setting aside dedicated time and resources for reviewing the state of operations ensures that serving the day-to-day line of business remains a priority. Pull together operations leaders and stakeholders to regularly review metrics, reaffirm or modify goals and objectives, and prioritize improvements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops09_common_tags, {
    choice_id = "ops_operations_health_review_ops_metrics_prioritize_improvement"
    risk      = "UNANSWERED"
  })
}