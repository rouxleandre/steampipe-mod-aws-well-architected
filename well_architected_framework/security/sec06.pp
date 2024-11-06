locals {
  well_architected_framework_sec06_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "protect-compute"
  })
}

benchmark "well_architected_framework_sec06" {
  title       = "SEC06 How do you protect your compute resources?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec06_bp01,
    benchmark.well_architected_framework_sec06_bp02,
    benchmark.well_architected_framework_sec06_bp03,
    benchmark.well_architected_framework_sec06_bp04,
    benchmark.well_architected_framework_sec06_bp05
  ]

  tags = local.well_architected_framework_sec06_common_tags
}

benchmark "well_architected_framework_sec06_bp01" {
  title       = "BP01 Perform vulnerability management"
  description = "Frequently scan and patch for vulnerabilities in your code, dependencies, and in your infrastructure to help protect against new threats."

  children = [
    aws_compliance.control.rds_db_instance_automatic_minor_version_upgrade_enabled,
    aws_compliance.control.cloudtrail_trail_validation_enabled,
    aws_compliance.control.cloudtrail_security_trail_enabled,
    aws_compliance.control.ec2_instance_uses_imdsv2,
    aws_compliance.control.ec2_instance_publicly_accessible_iam_profile_attached,
    aws_compliance.control.ssm_managed_instance_compliance_patch_compliant
  ]

  tags = merge(local.well_architected_framework_sec06_common_tags, {
    choice_id = "sec_protect_compute_vulnerability_management"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec06_bp02" {
  title       = "BP02 Provision compute from hardened images"
  description = "Provide fewer opportunities for unintended access to your runtime environments by deploying them from hardened images. Only acquire runtime dependencies, such as container images and application libraries, from trusted registries and verify their signatures. Create your own private registries to store trusted images and libraries for use in your build and deploy processes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec06_common_tags, {
    choice_id = "sec_protect_compute_hardened_images"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec06_bp03" {
  title       = "BP03 Validate software integrity"
  description = "Use cryptographic verification to validate the integrity of software artifacts (including images) your workload uses.  Cryptographically sign your software as a safeguard against unauthorized changes run within your compute environments."

  children = [
    aws_compliance.control.ebs_volume_unused,
    aws_compliance.control.ssm_managed_instance_compliance_association_compliant,
    aws_compliance.control.ssm_managed_instance_compliance_patch_compliant,
    aws_compliance.control.cloudtrail_trail_validation_enabled
  ]

  tags = merge(local.well_architected_framework_sec06_common_tags, {
    choice_id = "sec_protect_compute_validate_software_integrity"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec06_bp04" {
  title       = "BP04 Reduce manual management and interactive access"
  description = "Use automation to perform deployment, configuration, maintenance, and investigative tasks wherever possible. Consider manual access to compute resources in cases of emergency procedures or in safe (sandbox) environments, when automation is not available."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec06_common_tags, {
    choice_id = "sec_protect_compute_reduce_manual_management"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec06_bp05" {
  title       = "BP05 Automate compute protection"
  description = "Automate compute protection operations to reduce the need for human intervention. Use automated scanning to detect potential issues within your compute resources, and remediate with automated programmatic responses or fleet management operations.  Incorporate automation in your CI/CD processes to deploy trustworthy workloads with up-to-date dependencies."

  children = [
    aws_compliance.control.ec2_instance_iam_profile_attached,
    aws_compliance.control.ec2_instance_ssm_managed,
    aws_compliance.control.ec2_instance_not_use_multiple_enis,
    aws_compliance.control.ec2_stopped_instance_30_days
  ]

  tags = merge(local.well_architected_framework_sec06_common_tags, {
    choice_id = "sec_protect_compute_auto_protection"
    risk      = "UNANSWERED"
  })
}