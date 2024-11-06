locals {
  well_architected_framework_rel13_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "planning-for-recovery"
  })
}

benchmark "well_architected_framework_rel13" {
  title       = "REL13 How do you plan for disaster recovery (DR)?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel13_bp01,
    benchmark.well_architected_framework_rel13_bp02,
    benchmark.well_architected_framework_rel13_bp03,
    benchmark.well_architected_framework_rel13_bp04,
    benchmark.well_architected_framework_rel13_bp05
  ]

  tags = local.well_architected_framework_rel13_common_tags
}

benchmark "well_architected_framework_rel13_bp01" {
  title       = "BP01 Define recovery objectives for downtime and data loss"
  description = "The workload has a recovery time objective (RTO) and recovery point objective (RPO)."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel13_common_tags, {
    choice_id = "rel_planning_for_recovery_objective_defined_recovery"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel13_bp02" {
  title       = "BP02 Use defined recovery strategies to meet the recovery objectives"
  description = "Define a disaster recovery (DR) strategy that meets your workload's recovery objectives. Choose a strategy such as backup and restore, standby (active/passive), or active/active."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel13_common_tags, {
    choice_id = "rel_planning_for_recovery_disaster_recovery"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel13_bp03" {
  title       = "BP03 Test disaster recovery implementation to validate the implementation"
  description = "Regularly test failover to your recovery site to verify that it operates properly and that RTO and RPO are met."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel13_common_tags, {
    choice_id = "rel_planning_for_recovery_dr_tested"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel13_bp04" {
  title       = "BP04 Manage configuration drift at the DR site or Region"
  description = "Ensure that the infrastructure, data, and configuration are as needed at the DR site or Region. For example, check that AMIs and service quotas are up to date."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel13_common_tags, {
    choice_id = "rel_planning_for_recovery_config_drift"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel13_bp05" {
  title       = "BP05 Automate recovery"
  description = "Use AWS or third-party tools to automate system recovery and route traffic to the DR site or Region."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel13_common_tags, {
    choice_id = "rel_planning_for_recovery_auto_recovery"
    risk      = "UNANSWERED"
  })
}