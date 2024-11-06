locals {
  well_architected_framework_rel07_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "adapt-to-changes"
  })
}

benchmark "well_architected_framework_rel07" {
  title       = "REL07 How do you design your workload to adapt to changes in demand?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel07_bp01,
    benchmark.well_architected_framework_rel07_bp02,
    benchmark.well_architected_framework_rel07_bp03,
    benchmark.well_architected_framework_rel07_bp04
  ]

  tags = local.well_architected_framework_rel07_common_tags
}

benchmark "well_architected_framework_rel07_bp01" {
  title       = "BP01 Use automation when obtaining or scaling resources"
  description = "When replacing impaired resources or scaling your workload, automate the process by using managed AWS services, such as Amazon S3 and AWS Auto Scaling. You can also use third-party tools and AWS SDKs to automate scaling."

  children = [
    aws_compliance.control.autoscaling_group_multiple_az_configured,
    aws_compliance.control.dynamodb_table_auto_scaling_enabled
  ]

  tags = merge(local.well_architected_framework_rel07_common_tags, {
    choice_id = "rel_adapt_to_changes_autoscale_adapt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel07_bp02" {
  title       = "BP02 Obtain resources upon detection of impairment to a workload"
  description = "Scale resources reactively when necessary if availability is impacted, to restore workload availability."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel07_common_tags, {
    choice_id = "rel_adapt_to_changes_reactive_adapt_auto"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel07_bp03" {
  title       = "BP03 Obtain resources upon detection that more resources are needed for a workload"
  description = "Scale resources proactively to meet demand and avoid availability impact."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel07_common_tags, {
    choice_id = "rel_adapt_to_changes_proactive_adapt_auto"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel07_bp04" {
  title       = "BP04 Load test your workload"
  description = "Adopt a load testing methodology to measure if scaling activity meets workload requirements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel07_common_tags, {
    choice_id = "rel_adapt_to_changes_load_tested_adapt"
    risk      = "UNANSWERED"
  })
}