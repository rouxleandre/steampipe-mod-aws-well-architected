locals {
  well_architected_framework_rel12_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "testing-resiliency"
  })
}

benchmark "well_architected_framework_rel12" {
  title       = "REL12 How do you test reliability?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel12_bp01,
    benchmark.well_architected_framework_rel12_bp02,
    benchmark.well_architected_framework_rel12_bp03,
    benchmark.well_architected_framework_rel12_bp04,
    benchmark.well_architected_framework_rel12_bp05,
    benchmark.well_architected_framework_rel12_bp06
  ]

  tags = local.well_architected_framework_rel12_common_tags
}

benchmark "well_architected_framework_rel12_bp01" {
  title       = "BP01 Use playbooks to investigate failures"
  description = "Enable consistent and prompt responses to failure scenarios that are not well understood, by documenting the investigation process in playbooks. Playbooks are the predefined steps performed to identify the factors contributing to a failure scenario. The results from any process step are used to determine the next steps to take until the issue is identified or escalated."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel12_common_tags, {
    choice_id = "rel_testing_resiliency_playbook_resiliency"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel12_bp02" {
  title       = "BP02 Perform post-incident analysis"
  description = "Review customer-impacting events, and identify the contributing factors and preventative action items. Use this information to develop mitigations to limit or prevent recurrence. Develop procedures for prompt and effective responses. Communicate contributing factors and corrective actions as appropriate, tailored to target audiences. Have a method to communicate these causes to others as needed."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel12_common_tags, {
    choice_id = "rel_testing_resiliency_rca_resiliency"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel12_bp03" {
  title       = "BP03 Test functional requirements"
  description = "Use techniques such as unit tests and integration tests that validate required functionality."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel12_common_tags, {
    choice_id = "rel_testing_resiliency_test_functional"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel12_bp04" {
  title       = "BP04 Test scaling and performance requirements"
  description = "Use techniques such as load testing to validate that the workload meets scaling and performance requirements."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel12_common_tags, {
    choice_id = "rel_testing_resiliency_test_non_functional"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel12_bp05" {
  title       = "BP05 Test resiliency using chaos engineering"
  description = "Run chaos experiments regularly in environments that are in or as close to production as possible to understand how your system responds to adverse conditions."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel12_common_tags, {
    choice_id = "rel_testing_resiliency_failure_injection_resiliency"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel12_bp06" {
  title       = "BP06 Conduct game days regularly"
  description = "Use game days to regularly exercise your procedures for responding to events and failures as close to production as possible (including in production environments) with the people who will be involved in actual failure scenarios. Game days enforce measures to ensure that production events do not impact users."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel12_common_tags, {
    choice_id = "rel_testing_resiliency_game_days_resiliency"
    risk      = "UNANSWERED"
  })
}