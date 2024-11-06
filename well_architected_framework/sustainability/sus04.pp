locals {
  well_architected_framework_sus04_common_tags = merge(local.well_architected_framework_sustainability_common_tags, {
    question_id = "sus_data"
  })
}

benchmark "well_architected_framework_sus04" {
  title       = "SUS04 How do you take advantage of data management policies and patterns to support your sustainability goals?"
  description = ""
  children = [
    benchmark.well_architected_framework_sus04_bp01,
    benchmark.well_architected_framework_sus04_bp02,
    benchmark.well_architected_framework_sus04_bp03,
    benchmark.well_architected_framework_sus04_bp04,
    benchmark.well_architected_framework_sus04_bp05,
    benchmark.well_architected_framework_sus04_bp06,
    benchmark.well_architected_framework_sus04_bp07,
    benchmark.well_architected_framework_sus04_bp08
  ]

  tags = local.well_architected_framework_sus04_common_tags
}

benchmark "well_architected_framework_sus04_bp01" {
  title       = "BP01 Implement a data classification policy"
  description = "Classify data to understand its criticality to business outcomes and choose the right energy-efficient storage tier to store the data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a2"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp02" {
  title       = "BP02 Use technologies that support data access and storage patterns"
  description = "Use storage technologies that best support how your data is accessed and stored to minimize the resources provisioned while supporting your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a3"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp03" {
  title       = "BP03 Use policies to manage the lifecycle of your datasets"
  description = "Manage the lifecycle of all of your data and automatically enforce deletion to minimize the total storage required for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a4"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp04" {
  title       = "BP04 Remove unneeded or redundant data"
  description = "Remove unneeded or redundant data to minimize the storage resources required to store your datasets."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a6"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp05" {
  title       = "BP05 Use shared file systems or storage to access common data"
  description = "Adopt shared file systems or storage to avoid data duplication and enable more efficient infrastructure for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a7"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp06" {
  title       = "BP06 Back up data only when difficult to recreate"
  description = "Avoid backing up data that has no business value to minimize storage resources requirements for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a9"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp07" {
  title       = "BP07 Use elasticity and automation to expand block storage or file system"
  description = "Use elasticity and automation to expand block storage or file system as data grows to minimize the total provisioned storage."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a5"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus04_bp08" {
  title       = "BP08 Minimize data movement across networks"
  description = "Use shared file systems or object storage to access common data and minimize the total networking resources required to support data movement for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus04_common_tags, {
    choice_id = "sus_sus_data_a8"
    risk      = "UNANSWERED"
  })
}