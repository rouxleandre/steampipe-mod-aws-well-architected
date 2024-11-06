locals {
  well_architected_framework_sus03_common_tags = merge(local.well_architected_framework_sustainability_common_tags, {
    question_id = "sus_software"
  })
}

benchmark "well_architected_framework_sus03" {
  title       = "SUS03 How do you take advantage of software and architecture patterns to support your sustainability goals?"
  description = ""
  children = [
    benchmark.well_architected_framework_sus03_bp01,
    benchmark.well_architected_framework_sus03_bp02,
    benchmark.well_architected_framework_sus03_bp03,
    benchmark.well_architected_framework_sus03_bp04,
    benchmark.well_architected_framework_sus03_bp05
  ]

  tags = local.well_architected_framework_sus03_common_tags
}

benchmark "well_architected_framework_sus03_bp01" {
  title       = "BP01 Optimize software and architecture for asynchronous and scheduled jobs"
  description = "Use efficient software and architecture patterns such as queue-driven to maintain consistent high utilization of deployed resources."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus03_common_tags, {
    choice_id = "sus_sus_software_a2"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus03_bp02" {
  title       = "BP02 Remove or refactor workload components with low or no use"
  description = "Remove components that are unused and no longer required, and refactor components with little utilization to minimize waste in your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus03_common_tags, {
    choice_id = "sus_sus_software_a3"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus03_bp03" {
  title       = "BP03 Optimize areas of code that consume the most time or resources"
  description = "Optimize your code that runs within different components of your architecture to minimize resource usage while maximizing performance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus03_common_tags, {
    choice_id = "sus_sus_software_a4"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus03_bp04" {
  title       = "BP04 Optimize impact on devices and equipment"
  description = "Understand the devices and equipment used in your architecture and use strategies to reduce their usage. This can minimize the overall environmental impact of your cloud workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus03_common_tags, {
    choice_id = "sus_sus_software_a5"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus03_bp05" {
  title       = "BP05 Use software patterns and architectures that best support data access and storage patterns"
  description = "Understand how data is used within your workload, consumed by your users, transferred, and stored. Use software patterns and architectures that best support data access and storage to minimize the compute, networking, and storage resources required to support the workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus03_common_tags, {
    choice_id = "sus_sus_software_a6"
    risk      = "UNANSWERED"
  })
}