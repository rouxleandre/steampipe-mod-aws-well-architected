locals {
  well_architected_framework_rel09_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "backing-up-data"
  })
}

benchmark "well_architected_framework_rel09" {
  title       = "REL09 How do you back up data?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel09_bp01,
    benchmark.well_architected_framework_rel09_bp02,
    benchmark.well_architected_framework_rel09_bp03,
    benchmark.well_architected_framework_rel09_bp04
  ]

  tags = local.well_architected_framework_rel09_common_tags
}

benchmark "well_architected_framework_rel09_bp01" {
  title       = "BP01 Identify and back up all data that needs to be backed up, or reproduce the data from sources"
  description = "Understand and use the backup capabilities of the data services and resources used by the workload. Most services provide capabilities to back up workload data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel09_common_tags, {
    choice_id = "rel_backing_up_data_identified_backups_data"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel09_bp02" {
  title       = "BP02 Secure and encrypt backups"
  description = "Control and detect access to backups using authentication and authorization. Prevent and detect if data integrity of backups is compromised using encryption."

  children = [
    aws_compliance.control.backup_recovery_point_encryption_enabled,
    aws_compliance.control.dynamodb_table_encryption_enabled,
    aws_compliance.control.ec2_ebs_default_encryption_enabled,
    aws_compliance.control.ebs_volume_encryption_at_rest_enabled,
    aws_compliance.control.rds_db_instance_encryption_at_rest_enabled,
    aws_compliance.control.rds_db_snapshot_encrypted_at_rest,
    aws_compliance.control.s3_bucket_default_encryption_enabled
  ]

  tags = merge(local.well_architected_framework_rel09_common_tags, {
    choice_id = "rel_backing_up_data_secured_backups_data"
    risk      = "High"
  })
}

benchmark "well_architected_framework_rel09_bp03" {
  title       = "BP03 Perform data backup automatically"
  description = "Configure backups to be taken automatically based on a periodic schedule informed by the Recovery Point Objective (RPO), or by changes in the dataset. Critical datasets with low data loss requirements need to be backed up automatically on a frequent basis, whereas less critical data where some loss is acceptable can be backed up less frequently."

  children = [
    aws_compliance.control.backup_recovery_point_manual_deletion_disabled,
    aws_compliance.control.backup_recovery_point_min_retention_35_days,
    aws_compliance.control.dynamodb_table_in_backup_plan,
    aws_compliance.control.dynamodb_table_point_in_time_recovery_enabled,
    aws_compliance.control.dynamodb_table_protected_by_backup_plan,
    aws_compliance.control.ec2_instance_protected_by_backup_plan,
    aws_compliance.control.elasticache_redis_cluster_automatic_backup_retention_15_days,
    aws_compliance.control.fsx_file_system_protected_by_backup_plan,
    aws_compliance.control.rds_db_cluster_aurora_backtracking_enabled,
    aws_compliance.control.rds_db_cluster_aurora_protected_by_backup_plan,
    aws_compliance.control.rds_db_instance_backup_enabled
  ]

  tags = merge(local.well_architected_framework_rel09_common_tags, {
    choice_id = "rel_backing_up_data_automated_backups_data"
    risk      = "High"
  })
}

benchmark "well_architected_framework_rel09_bp04" {
  title       = "BP04 Perform periodic recovery of the data to verify backup integrity and processes"
  description = "Validate that your backup process implementation meets your Recovery Time Objectives (RTO) and Recovery Point Objectives (RPO) by performing a recovery test."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel09_common_tags, {
    choice_id = "rel_backing_up_data_periodic_recovery_testing_data"
    risk      = "UNANSWERED"
  })
}