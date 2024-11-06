locals {
  well_architected_framework_sustainability_common_tags = merge(local.well_architected_framework_common_tags, {
    pillar_id = "sustainability"
  })
}

benchmark "well_architected_framework_sustainability" {
  title       = "Sustainability"
  description = ""
  children = [
    benchmark.well_architected_framework_sus01,
    benchmark.well_architected_framework_sus02,
    benchmark.well_architected_framework_sus03,
    benchmark.well_architected_framework_sus04,
    benchmark.well_architected_framework_sus05,
    benchmark.well_architected_framework_sus06
  ]

  tags = local.well_architected_framework_sustainability_common_tags
}
