locals {
  well_architected_framework_cost07_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "pricing-model"
  })
}

benchmark "well_architected_framework_cost07" {
  title       = "COST07 How do you use pricing models to reduce cost?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost07_bp01,
    benchmark.well_architected_framework_cost07_bp02,
    benchmark.well_architected_framework_cost07_bp03,
    benchmark.well_architected_framework_cost07_bp04,
    benchmark.well_architected_framework_cost07_bp05
  ]

  tags = local.well_architected_framework_cost07_common_tags
}

benchmark "well_architected_framework_cost07_bp01" {
  title       = "BP01 Perform pricing model analysis"
  description = "Analyze each component of the workload. Determine if the component and resources will be running for extended periods (for commitment discounts) or dynamic and short-running (for spot or on-demand). Perform an analysis on the workload using the recommendations in cost management tools and apply business rules to those recommendations to achieve high returns."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost07_common_tags, {
    choice_id = "cost_pricing_model_analysis"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost07_bp02" {
  title       = "BP02 Choose Regions based on cost"
  description = "Resource pricing may be different in each Region. Identify Regional cost differences and only deploy in Regions with higher costs to meet latency, data residency and data sovereignty requirements. Factoring in Region cost helps you pay the lowest overall price for this workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost07_common_tags, {
    choice_id = "cost_pricing_model_region_cost"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost07_bp03" {
  title       = "BP03 Select third-party agreements with cost-efficient terms"
  description = "Cost-efficient agreements and terms ensure the cost of these services scales with the benefits they provide. Select agreements and pricing that scale when they provide additional benefits to your organization."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost07_common_tags, {
    choice_id = "cost_pricing_model_third_party"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost07_bp04" {
  title       = "BP04 Implement pricing models for all components of this workload"
  description = "Permanently running resources should utilize reserved capacity such as Savings Plans or Reserved Instances. Short-term capacity is configured to use Spot Instances, or Spot Fleet. On-Demand Instances are only used for short-term workloads that cannot be interrupted and do not run long enough for reserved capacity, between 25% to 75% of the period, depending on the resource type."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost07_common_tags, {
    choice_id = "cost_pricing_model_implement_models"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost07_bp05" {
  title       = "BP05 Perform pricing model analysis at the management account level"
  description = "Check billing and cost management tools and see recommended discounts with commitments and reservations to perform regular analysis at the management account level."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost07_common_tags, {
    choice_id = "cost_pricing_model_master_analysis"
    risk      = "UNANSWERED"
  })
}