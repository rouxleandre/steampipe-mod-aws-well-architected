locals {
  well_architected_framework_sec02_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "identities"
  })
}

benchmark "well_architected_framework_sec02" {
  title       = "SEC02 How do you manage identities for people and machines?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec02_bp01,
    benchmark.well_architected_framework_sec02_bp02,
    benchmark.well_architected_framework_sec02_bp03,
    benchmark.well_architected_framework_sec02_bp04,
    benchmark.well_architected_framework_sec02_bp05,
    benchmark.well_architected_framework_sec02_bp06
  ]

  tags = local.well_architected_framework_sec02_common_tags
}

benchmark "well_architected_framework_sec02_bp01" {
  title       = "BP01 Use strong sign-in mechanisms"
  description = "Sign-ins (authentication using sign-in credentials) can present risks when not using mechanisms like multi-factor authentication (MFA), especially in situations where sign-in credentials have been inadvertently disclosed or are easily guessed. Use strong sign-in mechanisms to reduce these risks by requiring MFA and strong password policies."

  children = [
    aws_compliance.control.iam_account_password_policy_strong_min_reuse_24,
    aws_compliance.control.iam_user_hardware_mfa_enabled,
    aws_compliance.control.iam_user_mfa_enabled,
    aws_compliance.control.iam_user_console_access_mfa_enabled,
    aws_compliance.control.iam_root_user_no_access_keys,
    aws_compliance.control.iam_user_with_administrator_access_mfa_enabled,
    aws_compliance.control.sagemaker_notebook_instance_root_access_disabled
  ]

  tags = merge(local.well_architected_framework_sec02_common_tags, {
    choice_id = "sec_identities_enforce_mechanisms"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec02_bp02" {
  title       = "BP02 Use temporary credentials"
  description = "When doing any type of authentication, it’s best to use temporary credentials instead of long-term credentials to reduce or eliminate risks, such as credentials being inadvertently disclosed, shared, or stolen."

  children = [
    aws_compliance.control.iam_user_access_key_age_90,
    aws_compliance.control.iam_user_unused_credentials_90,
    aws_compliance.control.secretsmanager_secret_automatic_rotation_enabled,
    aws_compliance.control.secretsmanager_secret_last_changed_90_day,
    aws_compliance.control.secretsmanager_secret_rotated_as_scheduled,
    aws_compliance.control.secretsmanager_secret_unused_90_day
  ]

  tags = merge(local.well_architected_framework_sec02_common_tags, {
    choice_id = "sec_identities_unique"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec02_bp03" {
  title       = "BP03 Store and use secrets securely"
  description = "A workload requires an automated capability to prove its identity to databases, resources, and third-party services. This is accomplished using secret access credentials, such as API access keys, passwords, and OAuth tokens. Using a purpose-built service to store, manage, and rotate these credentials helps reduce the likelihood that those credentials become compromised."

  children = [
    aws_compliance.control.cloudformation_stack_output_no_secrets,
    aws_compliance.control.ec2_instance_user_data_no_secrets,
    aws_compliance.control.ecs_task_definition_container_environment_no_secret
  ]

  tags = merge(local.well_architected_framework_sec02_common_tags, {
    choice_id = "sec_identities_secrets"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec02_bp04" {
  title       = "BP04 Rely on a centralized identity provider"
  description = "For workforce identities (employees and contractors), rely on an identity provider that allows you to manage identities in a centralized place. This makes it easier to manage access across multiple applications and systems, because you are creating, assigning, managing, revoking, and auditing access from a single location."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec02_common_tags, {
    choice_id = "sec_identities_identity_provider"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec02_bp05" {
  title       = "BP05 Audit and rotate credentials periodically"
  description = "Audit and rotate credentials periodically to limit how long the credentials can be used to access your resources. Long-term credentials create many risks, and these risks can be reduced by rotating long-term credentials regularly."

  children = [
    aws_compliance.control.iam_user_access_key_age_90,
    aws_compliance.control.kms_cmk_rotation_enabled,
    aws_compliance.control.secretsmanager_secret_automatic_rotation_enabled
  ]

  tags = merge(local.well_architected_framework_sec02_common_tags, {
    choice_id = "sec_identities_audit"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec02_bp06" {
  title       = "BP06 Employ user groups and attributes"
  description = "Define permissions according to user groups and attributes to help reduce the number and complexity of policies, which makes it simpler to achieve the principle of least privilege. You can use user groups to manage the permissions for many people in one place based on the function they perform in your organization. Attributes, such as department or location, can provide an additional layer of permission scope when people perform a similar function but for different subsets of resources."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec02_common_tags, {
    choice_id = "sec_identities_groups_attributes"
    risk      = "UNANSWERED"
  })
}