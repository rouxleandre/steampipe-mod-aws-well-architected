locals {
  well_architected_framework_sec03_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "permissions"
  })
}

benchmark "well_architected_framework_sec03" {
  title       = "SEC03 How do you manage permissions for people and machines?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec03_bp01,
    benchmark.well_architected_framework_sec03_bp02,
    benchmark.well_architected_framework_sec03_bp03,
    benchmark.well_architected_framework_sec03_bp04,
    benchmark.well_architected_framework_sec03_bp05,
    benchmark.well_architected_framework_sec03_bp06,
    benchmark.well_architected_framework_sec03_bp07,
    benchmark.well_architected_framework_sec03_bp08,
    benchmark.well_architected_framework_sec03_bp09
  ]

  tags = local.well_architected_framework_sec03_common_tags
}

benchmark "well_architected_framework_sec03_bp01" {
  title       = "BP01 Define access requirements"
  description = "Each component or resource of your workload needs to be accessed by administrators, end users, or other components. Have a clear definition of who or what should have access to each component, choose the appropriate identity type and method of authentication and authorization."

  children = [
    aws_compliance.control.ec2_instance_uses_imdsv2,
    aws_compliance.control.ec2_instance_iam_profile_attached,
    aws_compliance.control.ecs_task_definition_user_for_host_mode_check,
    aws_compliance.control.cloudwatch_cross_account_sharing
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_define"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp02" {
  title       = "BP02 Grant least privilege access"
  description = "It's a best practice to grant only the access that identities require to perform specific actions on specific resources under specific conditions. Use group and identity attributes to dynamically set permissions at scale, rather than defining permissions for individual users. For example, you can allow a group of developers access to manage only resources for their project. This way, if a developer leaves the project, the developer’s access is automatically revoked without changing the underlying access policies."

  children = [
    aws_compliance.control.ecs_task_definition_container_readonly_root_filesystem,
    aws_compliance.control.emr_cluster_kerberos_enabled,
    aws_compliance.control.ec2_instance_iam_profile_attached
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_least_privileges"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp03" {
  title       = "BP03 Define permission guardrails for your organization"
  description = "Use permission guardrails to reduce the scope of available permissions that can be granted to principals. The permission policy evaluation chain includes your guardrails to determine the effective permissions of a principal when making authorization decisions.  You can define guardrails using a layer-based approach. Apply some guardrails broadly across your entire organization and apply others granularly to temporary access sessions."

  children = [
    aws_compliance.control.account_part_of_organizations,
    aws_compliance.control.iam_user_unused_credentials_90,
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_define_guardrails"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp04" {
  title       = "BP04 Manage access based on lifecycle"
  description = "Monitor and adjust the permissions granted to your principals (users, roles, and groups) throughout their lifecycle within your organization. Adjust group memberships as users change roles, and remove access when a user leaves the organization."

  children = [
    aws_compliance.control.iam_user_unused_credentials_90,
    aws_compliance.control.dms_replication_instance_not_publicly_accessible,
    aws_compliance.control.cloudwatch_log_group_retention_period_365,
    aws_compliance.control.codebuild_project_build_greater_then_90_days,
    aws_compliance.control.vpc_eip_associated,
    aws_compliance.control.ecr_repository_lifecycle_policy_configured,
    aws_compliance.control.iam_password_policy_expire_90,
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_lifecycle"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp05" {
  title       = "BP05 Establish emergency access process"
  description = "Create a process that allows for emergency access to your workloads in the unlikely event of an issue with your centralized identity provider."

  children = [
    aws_compliance.control.iam_group_not_empty,
    aws_compliance.control.iam_policy_custom_no_blocked_kms_actions
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_emergency_process"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp06" {
  title       = "BP06 Share resources securely within your organization"
  description = "As the number of workloads grows, you might need to share access to resources in those workloads or provision the resources multiple times across multiple accounts. You might have constructs to compartmentalize your environment, such as having development, testing, and production environments. However, having separation constructs does not limit you from being able to share securely. By sharing components that overlap, you can reduce operational overhead and allow for a consistent experience without guessing what you might have missed while creating the same resource multiple times."

  children = [
    aws_compliance.control.dms_replication_instance_not_publicly_accessible,
    aws_compliance.control.es_domain_in_vpc,
    aws_compliance.control.opensearch_domain_in_vpc,
    aws_compliance.control.ec2_instance_in_vpc,
    aws_compliance.control.lambda_function_in_vpc,
    aws_compliance.control.sagemaker_notebook_instance_direct_internet_access_disabled,
    aws_compliance.control.secretsmanager_secret_unused_90_day,
    aws_compliance.control.codebuild_project_with_user_controlled_buildspec,
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_share_securely"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp07" {
  title       = "BP07 Reduce permissions continuously"
  description = "As your teams determine what access is required, remove unneeded permissions and establish review processes to achieve least privilege permissions. Continually monitor and remove unused identities and permissions for both human and machine access."

  children = [
    aws_compliance.control.iam_policy_no_star_star,
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_continuous_reduction"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp08" {
  title       = "BP08 Share resources securely with a third party"
  description = "The security of your cloud environment doesn’t stop at your organization. Your organization might rely on a third party to manage a portion of your data. The permission management for the third-party managed system should follow the practice of just-in-time access using the principle of least privilege with temporary credentials. By working closely with a third party, you can reduce the scope of impact and risk of unintended access together."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_share_securely_third_party"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec03_bp09" {
  title       = "BP09 Analyze public and cross account access"
  description = "Continually monitor findings that highlight public and cross-account access. Reduce public access and cross-account access to only the specific resources that require this access."

  children = [
    aws_compliance.control.dms_replication_instance_not_publicly_accessible,
    aws_compliance.control.ebs_snapshot_not_publicly_restorable,
    aws_compliance.control.ec2_instance_not_publicly_accessible,
    aws_compliance.control.es_domain_in_vpc,
    aws_compliance.control.opensearch_domain_in_vpc,
    aws_compliance.control.emr_cluster_master_nodes_no_public_ip,
    aws_compliance.control.emr_account_public_access_blocked,
    aws_compliance.control.ec2_instance_in_vpc,
    aws_compliance.control.lambda_function_restrict_public_access,
    aws_compliance.control.lambda_function_in_vpc,
    aws_compliance.control.rds_db_instance_prohibit_public_access,
    aws_compliance.control.rds_db_snapshot_prohibit_public_access,
    aws_compliance.control.kms_cmk_policy_prohibit_public_access,
    aws_compliance.control.redshift_cluster_prohibit_public_access,
    aws_compliance.control.s3_bucket_policy_restrict_public_access,
    aws_compliance.control.s3_bucket_restrict_public_write_access,
    aws_compliance.control.sagemaker_notebook_instance_direct_internet_access_disabled,
    aws_compliance.control.secretsmanager_secret_unused_90_day,
    aws_compliance.control.autoscaling_launch_config_public_ip_disabled,
    aws_compliance.control.cloudtrail_bucket_not_public,
    aws_compliance.control.ecr_repository_prohibit_public_access,
    aws_compliance.control.eks_cluster_endpoint_restrict_public_access,
    aws_compliance.control.elb_application_classic_network_lb_prohibit_public_access,
    aws_compliance.control.s3_public_access_block_account,
    aws_compliance.control.sns_topic_policy_prohibit_public_access,
    aws_compliance.control.sqs_queue_policy_prohibit_public_access,
    aws_compliance.control.ssm_document_prohibit_public_access
  ]

  tags = merge(local.well_architected_framework_sec03_common_tags, {
    choice_id = "sec_permissions_analyze_cross_account"
    risk      = "UNANSWERED"
  })
}