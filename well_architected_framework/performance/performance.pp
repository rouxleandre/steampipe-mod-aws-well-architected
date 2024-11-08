locals {
  well_architected_framework_performance_common_tags = merge(local.well_architected_framework_common_tags, {
    pillar_id = "performance"
  })
}

benchmark "well_architected_framework_performance" {
  title       = "Performance Efficiency"
  description = "The Performance Efficiency pillar includes the ability to use cloud resources efficiently to meet performance requirements, and to maintain that efficiency as demand changes and technologies evolve."
  children = [
    benchmark.well_architected_framework_perf01,
    benchmark.well_architected_framework_perf02,
    benchmark.well_architected_framework_perf03,
    benchmark.well_architected_framework_perf04,
    benchmark.well_architected_framework_perf05
  ]

  tags = local.well_architected_framework_performance_common_tags
}
