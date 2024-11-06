locals {
  well_architected_framework_rel08_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "tracking-change-management"
  })
}

benchmark "well_architected_framework_rel08" {
  title       = "REL08 How do you implement change?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel08_bp01,
    benchmark.well_architected_framework_rel08_bp02,
    benchmark.well_architected_framework_rel08_bp03,
    benchmark.well_architected_framework_rel08_bp04,
    benchmark.well_architected_framework_rel08_bp05
  ]

  tags = local.well_architected_framework_rel08_common_tags
}

benchmark "well_architected_framework_rel08_bp01" {
  title       = "BP01 Use runbooks for standard activities such as deployment"
  description = "Runbooks are the predefined procedures to achieve specific outcomes. Use runbooks to perform standard activities, whether done manually or automatically. Examples include deploying a workload, patching a workload, or making DNS modifications."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel08_common_tags, {
    choice_id = "rel_tracking_change_management_planned_changemgmt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel08_bp02" {
  title       = "BP02 Integrate functional testing as part of your deployment"
  description = "Functional tests are run as part of automated deployment. If success criteria are not met, the pipeline is halted or rolled back. These tests are run in a pre-production environment, which is staged prior to production in the pipeline. Ideally, this is done as part of a deployment pipeline."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel08_common_tags, {
    choice_id = "rel_tracking_change_management_functional_testing"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel08_bp03" {
  title       = "BP03 Integrate resiliency testing as part of your deployment"
  description = "Integrate resiliency testing by consciously introducing failures in your system to measure its capability in case of disruptive scenarios. Resilience tests are different from unit and function tests that are usually integrated in deployment cycles, as they focus on the identification of unanticipated failures in your system. While it is safe to start with resiliency testing integration in pre-production, set a goal to implement these tests in production as a part of your game days."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel08_common_tags, {
    choice_id = "rel_tracking_change_management_resiliency_testing"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel08_bp04" {
  title       = "BP04 Deploy using immutable infrastructure"
  description = "Immutable infrastructure is a model that mandates that no updates, security patches, or configuration changes happen in-place on production workloads. When a change is needed, the architecture is built onto new infrastructure and deployed into production."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel08_common_tags, {
    choice_id = "rel_tracking_change_management_immutable_infrastructure"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel08_bp05" {
  title       = "BP05 Deploy changes with automation"
  description = "Deployments and patching are automated to eliminate negative impact."

  children = [
    aws_compliance.control.rds_db_instance_automatic_minor_version_upgrade_enabled
  ]

  tags = merge(local.well_architected_framework_rel08_common_tags, {
    choice_id = "rel_tracking_change_management_automated_changemgmt"
    risk      = "UNANSWERED"
  })
}