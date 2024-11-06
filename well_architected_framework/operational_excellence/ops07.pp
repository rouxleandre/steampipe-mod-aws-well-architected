locals {
  well_architected_framework_ops07_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "ready-to-support"
  })
}

benchmark "well_architected_framework_ops07" {
  title       = "OPS07 How do you know that you are ready to support a workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops07_bp01,
    benchmark.well_architected_framework_ops07_bp02,
    benchmark.well_architected_framework_ops07_bp03,
    benchmark.well_architected_framework_ops07_bp04,
    benchmark.well_architected_framework_ops07_bp05,
    benchmark.well_architected_framework_ops07_bp06
  ]

  tags = local.well_architected_framework_ops07_common_tags
}

benchmark "well_architected_framework_ops07_bp01" {
  title       = "BP01 Ensure personnel capability"
  description = "Have a mechanism to validate that you have the appropriate number of trained personnel to support the workload. They must be trained on the platform and services that make up your workload. Provide them with the knowledge necessary to operate the workload. You must have enough trained personnel to support the normal operation of the workload and troubleshoot any incidents that occur. Have enough personnel so that you can rotate during on-call and vacations to avoid burnout."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops07_common_tags, {
    choice_id = "ops_ready_to_support_personnel_capability"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops07_bp02" {
  title       = "BP02 Ensure a consistent review of operational readiness"
  description = "Use Operational Readiness Reviews (ORRs) to validate that you can operate your workload. ORR is a mechanism developed at Amazon to validate that teams can safely operate their workloads. An ORR is a review and inspection process using a checklist of requirements. An ORR is a self-service experience that teams use to certify their workloads. ORRs include best practices from lessons learned from our years of building software."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops07_common_tags, {
    choice_id = "ops_ready_to_support_const_orr"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops07_bp03" {
  title       = "BP03 Use runbooks to perform procedures"
  description = "A runbook is a documented process to achieve a specific outcome. Runbooks consist of a series of steps that someone follows to get something done. Runbooks have been used in operations going back to the early days of aviation. In cloud operations, we use runbooks to reduce risk and achieve desired outcomes. At its simplest, a runbook is a checklist to complete a task."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops07_common_tags, {
    choice_id = "ops_ready_to_support_use_runbooks"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops07_bp04" {
  title       = "BP04 Use playbooks to investigate issues"
  description = "Playbooks are step-by-step guides used to investigate an incident. When incidents happen, playbooks are used to investigate, scope impact, and identify a root cause. Playbooks are used for a variety of scenarios, from failed deployments to security incidents. In many cases, playbooks identify the root cause that a runbook is used to mitigate. Playbooks are an essential component of your organization's incident response plans."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops07_common_tags, {
    choice_id = "ops_ready_to_support_use_playbooks"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops07_bp05" {
  title       = "BP05 Make informed decisions to deploy systems and changes"
  description = "Have processes in place for successful and unsuccessful changes to your workload. A pre-mortem is an exercise where a team simulates a failure to develop mitigation strategies. Use pre-mortems to anticipate failure and create procedures where appropriate. Evaluate the benefits and risks of deploying changes to your workload. Verify that all changes comply with governance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops07_common_tags, {
    choice_id = "ops_ready_to_support_informed_deploy_decisions"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops07_bp06" {
  title       = "BP06 Create support plans for production workloads"
  description = "Enable support for any software and services that your production workload relies on. Select an appropriate support level to meet your production service-level needs. Support plans for these dependencies are necessary in case there is a service disruption or software issue. Document support plans and how to request support for all service and software vendors. Implement mechanisms that verify that support points of contacts are kept up to date."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops07_common_tags, {
    choice_id = "ops_ready_to_support_enable_support_plans"
    risk      = "UNANSWERED"
  })
}