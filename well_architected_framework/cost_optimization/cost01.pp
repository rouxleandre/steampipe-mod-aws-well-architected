locals {
  well_architected_framework_cost01_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "cloud-financial-management"
  })
}

benchmark "well_architected_framework_cost01" {
  title       = "COST01 How do you implement cloud financial management?"
  description = "Implementing Cloud Financial Management helps organizations realize business value and financial success as they optimize their cost and usage and scale on AWS."
  children = [
    benchmark.well_architected_framework_cost01_bp01,
    benchmark.well_architected_framework_cost01_bp02,
    benchmark.well_architected_framework_cost01_bp03,
    benchmark.well_architected_framework_cost01_bp04,
    benchmark.well_architected_framework_cost01_bp05,
    benchmark.well_architected_framework_cost01_bp06,
    benchmark.well_architected_framework_cost01_bp07,
    benchmark.well_architected_framework_cost01_bp08,
    benchmark.well_architected_framework_cost01_bp09
  ]

  tags = local.well_architected_framework_cost01_common_tags
}

benchmark "well_architected_framework_cost01_bp01" {
  title       = "BP01 Establish ownership of cost optimization"
  description = "Create a team (Cloud Business Office, Cloud Center of Excellence, or FinOps team) that is responsible for establishing and maintaining cost awareness across your organization. The owner of cost optimization can be individual or a team (requires people from finance, technology, and business teams) that understands the entire organization and cloud finance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_function"
    risk      = "High"
  })
}

benchmark "well_architected_framework_cost01_bp02" {
  title       = "BP02 Establish a partnership between finance and technology"
  description = "Involve finance and technology teams in cost and usage discussions at all stages of your cloud journey. Teams regularly meet and discuss topics such as organizational goals and targets, current state of cost and usage, and financial and accounting practices."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_partnership"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp03" {
  title       = "BP03 Establish cloud budgets and forecasts"
  description = "Adjust existing organizational budgeting and forecasting processes to be compatible with the highly variable nature of cloud costs and usage. Processes must be dynamic, using trend-based or business driver-based algorithms or a combination of both."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_budget_forecast"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp04" {
  title       = "BP04 Implement cost awareness in your organizational processes"
  description = "Implement cost awareness, create transparency, and accountability of costs into new or existing processes that impact usage, and leverage existing processes for cost awareness. Implement cost awareness into employee training."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_cost_awareness"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp05" {
  title       = "BP05 Monitor cost proactively"
  description = "Implement tools and dashboards to monitor cost proactively for the workload. Regularly review the costs with configured tools or out of the box tools, do not just look at costs and categories when you receive notifications. Monitoring and analyzing costs proactively helps to identify positive trends and allows you to promote them throughout your organization."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_proactive_process"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp06" {
  title       = "BP06 Keep up-to-date with new service releases"
  description = "Consult regularly with experts or AWS Partners to consider which services and features provide lower cost. Review AWS blogs and other information sources."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_scheduled"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp07" {
  title       = "BP07 Quantify business value from cost optimization"
  description = "Quantifying business value from cost optimization allows you to understand the entire set of benefits to your organization. Because cost optimization is a necessary investment, quantifying business value allows you to explain the return on investment to stakeholders. Quantifying business value can help you gain more buy-in from stakeholders on future cost optimization investments, and provides a framework to measure the outcomes for your organization’s cost optimization activities."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_quantify_value"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp08" {
  title       = "BP08 Report and notify on cost optimization"
  description = "Set up cloud budgets and configure mechanisms to detect anomalies in usage. Configure related tools for cost and usage alerts against pre-defined targets and receive notifications when any usage exceeds those targets. Have regular meetings to analyze the cost-effectiveness of your workloads and promote cost awareness."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_usage_report"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost01_bp09" {
  title       = "BP09 Create a cost-aware culture"
  description = "Implement changes or programs across your organization to create a cost-aware culture. It is recommended to start small, then as your capabilities increase and your organization’s use of the cloud increases, implement large and wide ranging programs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost01_common_tags, {
    choice_id = "cost_cloud_financial_management_culture"
    risk      = "UNANSWERED"
  })
}