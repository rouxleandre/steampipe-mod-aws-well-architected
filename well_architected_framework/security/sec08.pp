locals {
  well_architected_framework_sec08_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "protect-data-rest"
  })
}

benchmark "well_architected_framework_sec08" {
  title       = "SEC08 How do you protect your data at rest?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec08_bp01,
    benchmark.well_architected_framework_sec08_bp02,
    benchmark.well_architected_framework_sec08_bp03,
    benchmark.well_architected_framework_sec08_bp04
  ]

  tags = local.well_architected_framework_sec08_common_tags
}

benchmark "well_architected_framework_sec08_bp01" {
  title       = "BP01 Implement secure key management"
  description = "Secure key management includes the storage, rotation, access control, and monitoring of key material required to secure data at rest for your workload."

  children = [
    aws_compliance.control.apigateway_stage_cache_encryption_at_rest_enabled,
    aws_compliance.control.backup_recovery_point_encryption_enabled,
    aws_compliance.control.codebuild_project_artifact_encryption_enabled,
    aws_compliance.control.codebuild_project_s3_logs_encryption_enabled,
    aws_compliance.control.kms_key_not_pending_deletion
  ]

  tags = merge(local.well_architected_framework_sec08_common_tags, {
    choice_id = "sec_protect_data_rest_key_mgmt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec08_bp02" {
  title       = "BP02 Enforce encryption at rest"
  description = "You should enforce the use of encryption for data at rest. Encryption maintains the confidentiality of sensitive data in the event of unauthorized access or accidental disclosure."

  children = [
    aws_compliance.control.efs_file_system_encrypt_data_at_rest,
    aws_compliance.control.es_domain_encryption_at_rest_enabled,
    aws_compliance.control.opensearch_domain_encryption_at_rest_enabled,
    aws_compliance.control.rds_db_instance_encryption_at_rest_enabled,
    aws_compliance.control.rds_db_snapshot_encrypted_at_rest,
    aws_compliance.control.cloudtrail_trail_logs_encrypted_with_kms_cmk,
    aws_compliance.control.dynamodb_table_encryption_enabled,
    aws_compliance.control.ec2_ebs_default_encryption_enabled,
    aws_compliance.control.eks_cluster_secrets_encrypted,
    aws_compliance.control.glue_dev_endpoint_cloudwatch_logs_encryption_enabled,
    aws_compliance.control.glue_dev_endpoint_job_bookmarks_encryption_enabled,
    aws_compliance.control.glue_dev_endpoint_s3_encryption_enabled,
    aws_compliance.control.glue_job_s3_encryption_enabled,
    aws_compliance.control.glue_job_bookmarks_encryption_enabled,
    aws_compliance.control.glue_job_cloudwatch_logs_encryption_enabled,
    aws_compliance.control.sagemaker_notebook_instance_encrypted_with_kms_cmk,
    aws_compliance.control.sagemaker_training_job_inter_container_traffic_encryption_enabled,
    aws_compliance.control.sagemaker_training_job_volume_and_data_encryption_enabled
  ]

  tags = merge(local.well_architected_framework_sec08_common_tags, {
    choice_id = "sec_protect_data_rest_encrypt"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec08_bp03" {
  title       = "BP03 Automate data at rest protection"
  description = "Use automation to validate and enforce data at rest controls.  Use automated scanning to detect misconfiguration of your data storage solutions, and perform remediations through automated programmatic response where possible.  Incorporate automation in your CI/CD processes to detect data storage misconfigurations before they are deployed to production."

  children = [
    aws_compliance.control.redshift_cluster_audit_logging_enabled,
    aws_compliance.control.redshift_cluster_kms_enabled,
    aws_compliance.control.s3_bucket_default_encryption_enabled,
    aws_compliance.control.sagemaker_endpoint_configuration_encryption_at_rest_enabled,
    aws_compliance.control.sagemaker_notebook_instance_encryption_at_rest_enabled,
    aws_compliance.control.sagemaker_notebook_instance_encrypted_with_kms_cmk
  ]

  tags = merge(local.well_architected_framework_sec08_common_tags, {
    choice_id = "sec_protect_data_rest_automate_protection"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec08_bp04" {
  title       = "BP04 Enforce access control"
  description = "To help protect your data at rest, enforce access control using mechanisms, such as isolation and versioning, and apply the principle of least privilege. Prevent the granting of public access to your data."

  children = [
    aws_compliance.control.sns_topic_encrypted_at_rest,
    aws_compliance.control.s3_bucket_versioning_enabled,
    aws_compliance.control.account_part_of_organizations
  ]

  tags = merge(local.well_architected_framework_sec08_common_tags, {
    choice_id = "sec_protect_data_rest_access_control"
    risk      = "UNANSWERED"
  })
}