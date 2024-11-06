locals {
  well_architected_framework_sus06_common_tags = merge(local.well_architected_framework_sustainability_common_tags, {
    question_id = "sus_dev"
  })
}

benchmark "well_architected_framework_sus06" {
  title       = "SUS06 How do your organizational processes support your sustainability goals?"
  description = ""
  children = [
    benchmark.well_architected_framework_sus06_bp01,
    benchmark.well_architected_framework_sus06_bp02,
    benchmark.well_architected_framework_sus06_bp03,
    benchmark.well_architected_framework_sus06_bp04
  ]

  tags = local.well_architected_framework_sus06_common_tags
}

benchmark "well_architected_framework_sus06_bp01" {
  title       = "BP01 Adopt methods that can rapidly introduce sustainability improvements"
  description = "Adopt methods and processes to validate potential improvements, minimize testing costs, and deliver small improvements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus06_common_tags, {
    choice_id = "sus_sus_dev_a2"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus06_bp02" {
  title       = "BP02 Keep your workload up-to-date"
  description = "Keep your workload up-to-date to adopt efficient features, remove issues, and improve the overall efficiency of your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus06_common_tags, {
    choice_id = "sus_sus_dev_a3"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus06_bp03" {
  title       = "BP03 Increase utilization of build environments"
  description = "Increase the utilization of resources to develop, test, and build your workloads."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus06_common_tags, {
    choice_id = "sus_sus_dev_a4"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus06_bp04" {
  title       = "BP04 Use managed device farms for testing"
  description = "Use managed device farms to efficiently test a new feature on a representative set of hardware."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus06_common_tags, {
    choice_id = "sus_sus_dev_a5"
    risk      = "UNANSWERED"
  })
}