locals {
  well_architected_framework_ops05_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "dev-integ"
  })
}

benchmark "well_architected_framework_ops05" {
  title       = "OPS05 How do you reduce defects, ease remediation, and improve flow into production?"
  description = "Adopt approaches that improve flow of changes into production, that activate refactoring, fast feedback on quality, and bug fixing. These accelerate beneficial changes entering production, limit issues deployed, and achieve rapid identification and remediation of issues introduced through deployment activities."
  children = [
    benchmark.well_architected_framework_ops05_bp01,
    benchmark.well_architected_framework_ops05_bp02,
    benchmark.well_architected_framework_ops05_bp03,
    benchmark.well_architected_framework_ops05_bp04,
    benchmark.well_architected_framework_ops05_bp05,
    benchmark.well_architected_framework_ops05_bp06,
    benchmark.well_architected_framework_ops05_bp07,
    benchmark.well_architected_framework_ops05_bp08,
    benchmark.well_architected_framework_ops05_bp09,
    benchmark.well_architected_framework_ops05_bp10
  ]

  tags = local.well_architected_framework_ops05_common_tags
}

benchmark "well_architected_framework_ops05_bp01" {
  title       = "BP01 Use version control"
  description = "Use version control to activate tracking of changes and releases."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_version_control"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp02" {
  title       = "BP02 Test and validate changes"
  description = "Every change deployed must be tested to avoid errors in production. This best practice is focused on testing changes from version control to artifact build. Besides application code changes, testing should include infrastructure, configuration, security controls, and operations procedures. Testing takes many forms, from unit tests to software component analysis (SCA). Move tests further to the left in the software integration and delivery process results in higher certainty of artifact quality."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_test_val_chg"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp03" {
  title       = "BP03 Use configuration management systems"
  description = "Use configuration management systems to make and track configuration changes. These systems reduce errors caused by manual processes and reduce the level of effort to deploy changes."

  children = [
    aws_compliance.control.config_enabled_all_regions
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_conf_mgmt_sys"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp04" {
  title       = "BP04 Use build and deployment management systems"
  description = "Use build and deployment management systems. These systems reduce errors caused by manual processes and reduce the level of effort to deploy changes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_build_mgmt_sys"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp05" {
  title       = "BP05 Perform patch management"
  description = "Perform patch management to gain features, address issues, and remain compliant with governance. Automate patch management to reduce errors caused by manual processes, scale, and reduce the level of effort to patch."

  children = [
    aws_compliance.control.ssm_managed_instance_compliance_patch_compliant
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_patch_mgmt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp06" {
  title       = "BP06 Share design standards"
  description = "Share best practices across teams to increase awareness and maximize the benefits of development efforts. Document them and keep them up to date as your architecture evolves. If shared standards are enforced in your organization, it’s critical that mechanisms exist to request additions, changes, and exceptions to standards. Without this option, standards become a constraint on innovation."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_share_design_stds"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp07" {
  title       = "BP07 Implement practices to improve code quality"
  description = "Implement practices to improve code quality and minimize defects. Some examples include test-driven development, code reviews, standards adoption, and pair programming. Incorporate these practices into your continuous integration and delivery process."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_code_quality"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp08" {
  title       = "BP08 Use multiple environments"
  description = "Use multiple environments to experiment, develop, and test your workload. Use increasing levels of controls as environments approach production to gain confidence your workload will operate as intended when deployed."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_multi_env"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp09" {
  title       = "BP09 Make frequent, small, reversible changes"
  description = "Frequent, small, and reversible changes reduce the scope and impact of a change. When used in conjunction with change management systems, configuration management systems, and build and delivery systems frequent, small, and reversible changes reduce the scope and impact of a change. This results in more effective troubleshooting and faster remediation with the option to roll back changes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_freq_sm_rev_chg"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops05_bp10" {
  title       = "BP10 Fully automate integration and deployment"
  description = "Automate build, deployment, and testing of the workload. This reduces errors caused by manual processes and reduces the effort to deploy changes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops05_common_tags, {
    choice_id = "ops_dev_integ_auto_integ_deploy"
    risk      = "UNANSWERED"
  })
}