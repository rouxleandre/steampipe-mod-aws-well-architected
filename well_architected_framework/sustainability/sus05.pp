locals {
  well_architected_framework_sus05_common_tags = merge(local.well_architected_framework_sustainability_common_tags, {
    question_id = "sus_hardware"
  })
}

benchmark "well_architected_framework_sus05" {
  title       = "SUS05 How do you select and use cloud hardware and services in your architecture to support your sustainability goals?"
  description = ""
  children = [
    benchmark.well_architected_framework_sus05_bp01,
    benchmark.well_architected_framework_sus05_bp02,
    benchmark.well_architected_framework_sus05_bp03,
    benchmark.well_architected_framework_sus05_bp04
  ]

  tags = local.well_architected_framework_sus05_common_tags
}

benchmark "well_architected_framework_sus05_bp01" {
  title       = "BP01 Use the minimum amount of hardware to meet your needs"
  description = "Use the minimum amount of hardware for your workload to efficiently meet your business needs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus05_common_tags, {
    choice_id = "sus_sus_hardware_a2"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus05_bp02" {
  title       = "BP02 Use instance types with the least impact"
  description = "Continually monitor and use new instance types to take advantage of energy efficiency improvements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus05_common_tags, {
    choice_id = "sus_sus_hardware_a3"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus05_bp03" {
  title       = "BP03 Use managed services"
  description = "Use managed services to operate more efficiently in the cloud."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus05_common_tags, {
    choice_id = "sus_sus_hardware_a4"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus05_bp04" {
  title       = "BP04 Optimize your use of hardware-based compute accelerators"
  description = "Optimize your use of accelerated computing instances to reduce the physical infrastructure demands of your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus05_common_tags, {
    choice_id = "sus_sus_hardware_a5"
    risk      = "UNANSWERED"
  })
}