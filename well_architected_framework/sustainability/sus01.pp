locals {
  well_architected_framework_sus01_common_tags = merge(local.well_architected_framework_sustainability_common_tags, {
    question_id = "sus_region"
  })
}

benchmark "well_architected_framework_sus01" {
  title       = "SUS01 How do you select Regions for your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_sus01_bp01
  ]

  tags = local.well_architected_framework_sus01_common_tags
}

benchmark "well_architected_framework_sus01_bp01" {
  title       = "BP01 Choose Region based on both business requirements and sustainability goals"
  description = "Choose a Region for your workload based on both your business requirements and sustainability goals to optimize its KPIs, including performance, cost, and carbon footprint."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus01_common_tags, {
    choice_id = "sus_sus_region_a2"
    risk      = "UNANSWERED"
  })
}