locals {
  well_architected_framework_ops06_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "mit-deploy-risks"
  })
}

benchmark "well_architected_framework_ops06" {
  title       = "OPS06 How do you mitigate deployment risks?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops06_bp01,
    benchmark.well_architected_framework_ops06_bp02,
    benchmark.well_architected_framework_ops06_bp03,
    benchmark.well_architected_framework_ops06_bp04
  ]

  tags = local.well_architected_framework_ops06_common_tags
}

benchmark "well_architected_framework_ops06_bp01" {
  title       = "BP01 Plan for unsuccessful changes"
  description = "Plan to revert to a known good state, or remediate in the production environment if the deployment causes undesired outcome. Having a policy to establish such a plan helps all teams develop strategies to recover from failed changes. Some example strategies are deployment and rollback steps, change policies, feature flags, traffic isolation, and traffic shifting. A single release may include multiple related component changes. The strategy should provide the ability to withstand or recover from a failure of any component change."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops06_common_tags, {
    choice_id = "ops_mit_deploy_risks_plan_for_unsucessful_changes"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops06_bp02" {
  title       = "BP02 Test deployments"
  description = "Test release procedures in pre-production by using the same deployment configuration, security controls, steps, and procedures as in production. Validate that all deployed steps are completed as expected, such as inspecting files, configurations, and services. Further test all changes with functional, integration, and load tests, along with any monitoring such as health checks. By doing these tests, you can identify deployment issues early with an opportunity to plan and mitigate them prior to production."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops06_common_tags, {
    choice_id = "ops_mit_deploy_risks_test_val_chg"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops06_bp03" {
  title       = "BP03 Employ safe deployment strategies"
  description = "Safe production roll-outs control the flow of beneficial changes with an aim to minimize any perceived impact for customers from those changes. The safety controls provide inspection mechanisms to validate desired outcomes and limit the scope of impact from any defects introduced by the changes or from deployment failures. Safe roll-outs may include strategies such as feature-flags, one-box, rolling (canary releases), immutable, traffic splitting, and blue/green deployments."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops06_common_tags, {
    choice_id = "ops_mit_deploy_risks_deploy_mgmt_sys"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops06_bp04" {
  title       = "BP04 Automate testing and rollback"
  description = "To increase the speed, reliability, and confidence of your deployment process, have a strategy for automated testing and rollback capabilities in pre-production and production environments. Automate testing when deploying to production to simulate human and system interactions that verify the changes being deployed. Automate rollback to revert back to a previous known good state quickly. The rollback should be initiated automatically on pre-defined conditions such as when the desired outcome of your change is not achieved or when the automated test fails. Automating these two activities improves your success rate for your deployments, minimizes recovery time, and reduces the potential impact to the business."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops06_common_tags, {
    choice_id = "ops_mit_deploy_risks_auto_testing_and_rollback"
    risk      = "UNANSWERED"
  })
}