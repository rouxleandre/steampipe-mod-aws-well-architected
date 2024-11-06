locals {
  well_architected_framework_sec01_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "securely-operate"
  })
}

benchmark "well_architected_framework_sec01" {
  title       = "SEC01 How do you securely operate your workload?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec01_bp01,
    benchmark.well_architected_framework_sec01_bp02,
    benchmark.well_architected_framework_sec01_bp03,
    benchmark.well_architected_framework_sec01_bp04,
    benchmark.well_architected_framework_sec01_bp05,
    benchmark.well_architected_framework_sec01_bp06,
    benchmark.well_architected_framework_sec01_bp07,
    benchmark.well_architected_framework_sec01_bp08
  ]

  tags = local.well_architected_framework_sec01_common_tags
}

benchmark "well_architected_framework_sec01_bp01" {
  title       = "BP01 Separate workloads using accounts"
  description = "Establish common guardrails and isolation between environments (such as production, development, and test) and workloads through a multi-account strategy. Account-level separation is strongly recommended, as it provides a strong isolation boundary for security, billing, and access."

  children = [
    aws_compliance.control.account_part_of_organizations
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_multi_accounts"
    risk      = "High"
  })
}

benchmark "well_architected_framework_sec01_bp02" {
  title       = "BP02 Secure account root user and properties"
  description = "The root user is the most privileged user in an AWS account, with full administrative access to all resources within the account, and in some cases cannot be constrained by security policies. Disabling programmatic access to the root user, establishing appropriate controls for the root user, and avoiding routine use of the root user helps reduce the risk of inadvertent exposure of the root credentials and subsequent compromise of the cloud environment."

  children = [
    aws_compliance.control.iam_root_user_hardware_mfa_enabled,
    aws_compliance.control.iam_root_user_mfa_enabled,
    aws_compliance.control.iam_root_user_no_access_keys
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_aws_account"
    risk      = "high"
  })
}

benchmark "well_architected_framework_sec01_bp03" {
  title       = "BP03 Identify and validate control objectives"
  description = "Based on your compliance requirements and risks identified from your threat model, derive and validate the control objectives and controls that you need to apply to your workload. Ongoing validation of control objectives and controls help you measure the effectiveness of risk mitigation."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_control_objectives"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec01_bp04" {
  title       = "BP04 Stay up to date with security threats and recommendations"
  description = "Stay up to date with the latest threats and mitigations by monitoring industry threat intelligence publications and data feeds for updates. Evaluate managed service offerings that automatically update based on the latest threat data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_updated_threats"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec01_bp05" {
  title       = "BP05 Identify and prioritize risks using a threat model"
  description = "Perform threat modeling to identify and maintain an up-to-date register of potential threats and associated mitigations for your workload. Prioritize your threats and adapt your security control mitigations to prevent, detect, and respond. Revisit and maintain this in the context of your workload, and the evolving security landscape."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_threat_model"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec01_bp06" {
  title       = "BP06 Reduce security management scope"
  description = "Determine if you can reduce your security scope by using AWS services that shift management of certain controls to AWS (managed services). These services can help reduce your security maintenance tasks, such as infrastructure provisioning, software setup, patching, or backups."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_reduce_management_scope"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec01_bp07" {
  title       = "BP07 Automate deployment of standard security controls"
  description = "Apply modern DevOps practices as you develop and deploy security controls that are standard across your AWS environments.  Define standard security controls and configurations using Infrastructure as Code (IaC) templates, capture changes in a version control system, test changes as part of a CI/CD pipeline, and automate the deployment of changes to your AWS environments."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_automate_security_controls"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec01_bp08" {
  title       = "BP08 Evaluate and implement new security services and features regularly"
  description = "Evaluate and implement security services and features from AWS and AWS Partners that allow you to evolve the security posture of your workload. "

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec01_common_tags, {
    choice_id = "sec_securely_operate_implement_services_features"
    risk      = "UNANSWERED"
  })
}