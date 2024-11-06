locals {
  well_architected_framework_sec11_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "application-security"
  })
}

benchmark "well_architected_framework_sec11" {
  title       = "SEC11 How do you incorporate and validate the security properties of applications throughout the design, development, and deployment lifecycle?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec11_bp01,
    benchmark.well_architected_framework_sec11_bp02,
    benchmark.well_architected_framework_sec11_bp03,
    benchmark.well_architected_framework_sec11_bp04,
    benchmark.well_architected_framework_sec11_bp05,
    benchmark.well_architected_framework_sec11_bp06,
    benchmark.well_architected_framework_sec11_bp07,
    benchmark.well_architected_framework_sec11_bp08
  ]

  tags = local.well_architected_framework_sec11_common_tags
}

benchmark "well_architected_framework_sec11_bp01" {
  title       = "BP01 Perform regular penetration testing"
  description = "Perform regular penetration testing of your software. This mechanism helps identify potential software issues that cannot be detected by automated testing or a manual code review. It can also help you understand the efficacy of your detective controls. Penetration testing should try to determine if the software can be made to perform in unexpected ways, such as exposing data that should be protected, or granting broader permissions than expected."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_perform_regular_penetration_testing"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp02" {
  title       = "BP02 Deploy software programmatically"
  description = "Perform software deployments programmatically where possible. This approach reduces the likelihood that a deployment fails or an unexpected issue is introduced due to human error."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_deploy_software_programmatically"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp03" {
  title       = "BP03 Regularly assess security properties of the pipelines"
  description = "Apply the principles of the Well-Architected Security Pillar to your pipelines, with particular attention to the separation of permissions. Regularly assess the security properties of your pipeline infrastructure. Effectively managing the security of the pipelines allows you to deliver the security of the software that passes through the pipelines."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_regularly_assess_security_properties_of_pipelines"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp04" {
  title       = "BP04 Train for application security"
  description = "Provide training to the builders in your organization on common practices for the secure development and operation of applications. Adopting security focused development practices helps reduce the likelihood of issues that are only detected at the security review stage."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_train_for_application_security"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp05" {
  title       = "BP05 Automate testing throughout the development and release lifecycle"
  description = "Automate the testing for security properties throughout the development and release lifecycle. Automation makes it easier to consistently and repeatably identify potential issues in software prior to release, which reduces the risk of security issues in the software being provided."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_automate_testing_throughout_lifecycle"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp06" {
  title       = "BP06 Manual code reviews"
  description = "Perform a manual code review of the software that you produce. This process helps verify that the person who wrote the code is not the only one checking the code quality."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_manual_code_reviews"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp07" {
  title       = "BP07 Centralize services for packages and dependencies"
  description = "Provide centralized services for builder teams to obtain software packages and other dependencies. This allows the validation of packages before they are included in the software that you write, and provides a source of data for the analysis of the software being used in your organization."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_centralize_services_for_packages_and_dependencies"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec11_bp08" {
  title       = "BP08 Build a program that embeds security ownership in workload teams"
  description = "Build a program or mechanism that empowers builder teams to make security decisions about the software that they create. Your security team still needs to validate these decisions during a review, but embedding security ownership in builder teams allows for faster, more secure workloads to be built. This mechanism also promotes a culture of ownership that positively impacts the operation of the systems you build."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec11_common_tags, {
    choice_id = "sec_appsec_build_program_that_embeds_security_ownership_in_teams"
    risk      = "UNANSWERED"
  })
}