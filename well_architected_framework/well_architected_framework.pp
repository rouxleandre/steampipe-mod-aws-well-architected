locals {
  well_architected_framework_common_tags = merge(local.aws_well_architected_common_tags, {
    type = "Benchmark"
  })
}

benchmark "well_architected_framework" {
  title       = "AWS Well-Architected Framework"
  description = "The AWS Well-Architected Framework describes key concepts, design principles, and architectural best practices for designing and running workloads in the cloud. By answering a few foundational questions, learn how well your architecture aligns with cloud best practices and gain guidance for making improvements."
  documentation = file("./well_architected_framework/docs/well_architected_framework_overview.md")

  children = [
    benchmark.well_architected_framework_operational_excellence,
    benchmark.well_architected_framework_reliability,
    benchmark.well_architected_framework_security,
    benchmark.well_architected_framework_cost_optimization,
    benchmark.well_architected_framework_sustainability,
    benchmark.well_architected_framework_performance
  ]

  tags = local.well_architected_framework_common_tags
}

control "wafr_undefined" {
  title = "Measurement Mechanism Undefined or Not Possible"
  sql = <<EOT
    select
      '-' as resource,
      'skip' as status,
      'The best practice cannot be evaluated using available controls or has not been implemented.' as reason
    EOT
}
