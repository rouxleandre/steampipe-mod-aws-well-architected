locals {
  well_architected_framework_ops11_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "evolve-ops"
  })
}

benchmark "well_architected_framework_ops11" {
  title       = "OPS11 How do you evolve operations?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops11_bp01,
    benchmark.well_architected_framework_ops11_bp02,
    benchmark.well_architected_framework_ops11_bp03,
    benchmark.well_architected_framework_ops11_bp04,
    benchmark.well_architected_framework_ops11_bp05,
    benchmark.well_architected_framework_ops11_bp06,
    benchmark.well_architected_framework_ops11_bp07,
    benchmark.well_architected_framework_ops11_bp08,
    benchmark.well_architected_framework_ops11_bp09
  ]

  tags = local.well_architected_framework_ops11_common_tags
}

benchmark "well_architected_framework_ops11_bp01" {
  title       = "BP01 Have a process for continuous improvement"
  description = "Evaluate your workload against internal and external architecture best practices. Conduct frequent, intentional workload reviews. Prioritize improvement opportunities into your software development cadence."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_process_cont_imp"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp02" {
  title       = "BP02 Perform post-incident analysis"
  description = "Review customer-impacting events, and identify the contributing factors and preventative actions. Use this information to develop mitigations to limit or prevent recurrence. Develop procedures for prompt and effective responses. Communicate contributing factors and corrective actions as appropriate, tailored to target audiences."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_perform_rca_process"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp03" {
  title       = "BP03 Implement feedback loops"
  description = "Feedback loops provide actionable insights that drive decision making. Build feedback loops into your procedures and workloads. This helps you identify issues and areas that need improvement. They also validate investments made in improvements. These feedback loops are the foundation for continuously improving your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_feedback_loops"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp04" {
  title       = "BP04 Perform knowledge management"
  description = "Knowledge management helps team members find the information to perform their job. In learning organizations, information is freely shared which empowers individuals. The information can be discovered or searched. Information is accurate and up to date. Mechanisms exist to create new information, update existing information, and archive outdated information. The most common example of a knowledge management platform is a content management system like a wiki."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_knowledge_management"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp05" {
  title       = "BP05 Define drivers for improvement"
  description = "Identify drivers for improvement to help you evaluate and prioritize opportunities based on data and feedback loops. Explore improvement opportunities in your systems and processes, and automate where appropriate."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_drivers_for_imp"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp06" {
  title       = "BP06 Validate insights"
  description = "Review your analysis results and responses with cross-functional teams and business owners. Use these reviews to establish common understanding, identify additional impacts, and determine courses of action. Adjust responses as appropriate."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_validate_insights"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp07" {
  title       = "BP07 Perform operations metrics reviews"
  description = "Regularly perform retrospective analysis of operations metrics with cross-team participants from different areas of the business. Use these reviews to identify opportunities for improvement, potential courses of action, and to share lessons learned. Look for opportunities to improve in all of your environments (for example, development, test, and production)."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_metrics_review"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp08" {
  title       = "BP08 Document and share lessons learned"
  description = "Document and share lessons learned from the operations activities so that you can use them internally and across teams. You should share what your teams learn to increase the benefit across your organization. Share information and resources to prevent avoidable errors and ease development efforts, and focus on delivery of desired features."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_share_lessons_learned"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops11_bp09" {
  title       = "BP09 Allocate time to make improvements"
  description = "Dedicate time and resources within your processes to make continuous incremental improvements possible."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops11_common_tags, {
    choice_id = "ops_evolve_ops_allocate_time_for_imp"
    risk      = "UNANSWERED"
  })
}