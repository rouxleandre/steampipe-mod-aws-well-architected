locals {
  well_architected_framework_sus02_common_tags = merge(local.well_architected_framework_sustainability_common_tags, {
    question_id = "sus_user"
  })
}

benchmark "well_architected_framework_sus02" {
  title       = "SUS02 How do you align cloud resources to your demand?"
  description = ""
  children = [
    benchmark.well_architected_framework_sus02_bp01,
    benchmark.well_architected_framework_sus02_bp02,
    benchmark.well_architected_framework_sus02_bp03,
    benchmark.well_architected_framework_sus02_bp04,
    benchmark.well_architected_framework_sus02_bp05,
    benchmark.well_architected_framework_sus02_bp06
  ]

  tags = local.well_architected_framework_sus02_common_tags
}

benchmark "well_architected_framework_sus02_bp01" {
  title       = "BP01 Scale workload infrastructure dynamically"
  description = "Use elasticity of the cloud and scale your infrastructure dynamically to match supply of cloud resources to demand and avoid overprovisioned capacity in your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus02_common_tags, {
    choice_id = "sus_sus_user_a2"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus02_bp02" {
  title       = "BP02 Align SLAs with sustainability goals"
  description = "Review and optimize workload service-level agreements (SLA) based on your sustainability goals to minimize the resources required to support your workload while continuing to meet business needs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus02_common_tags, {
    choice_id = "sus_sus_user_a3"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus02_bp03" {
  title       = "BP03 Optimize geographic placement of workloads based on their networking requirements"
  description = "Select cloud location and services for your workload that reduce the distance network traffic must travel and decrease the total network resources required to support your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus02_common_tags, {
    choice_id = "sus_sus_user_a5"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus02_bp04" {
  title       = "BP04 Stop the creation and maintenance of unused assets"
  description = "Decommission unused assets in your workload to reduce the number of cloud resources required to support your demand and minimize waste."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus02_common_tags, {
    choice_id = "sus_sus_user_a4"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus02_bp05" {
  title       = "BP05 Optimize team member resources for activities performed"
  description = "Optimize resources provided to team members to minimize the environmental sustainability impact while supporting their needs."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus02_common_tags, {
    choice_id = "sus_sus_user_a6"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sus02_bp06" {
  title       = "BP06 Implement buffering or throttling to flatten the demand curve"
  description = "Buffering and throttling flatten the demand curve and reduce the provisioned capacity required for your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sus02_common_tags, {
    choice_id = "sus_sus_user_a7"
    risk      = "UNANSWERED"
  })
}