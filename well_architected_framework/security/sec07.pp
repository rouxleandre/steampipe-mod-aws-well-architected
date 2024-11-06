locals {
  well_architected_framework_sec07_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "data-classification"
  })
}

benchmark "well_architected_framework_sec07" {
  title       = "SEC07 How do you classify your data?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec07_bp01,
    benchmark.well_architected_framework_sec07_bp02,
    benchmark.well_architected_framework_sec07_bp03,
    benchmark.well_architected_framework_sec07_bp04
  ]

  tags = local.well_architected_framework_sec07_common_tags
}

benchmark "well_architected_framework_sec07_bp01" {
  title       = "BP01 Understand your data classification scheme"
  description = "Understand the classification of data your workload is processing, its handling requirements, the associated business processes, where the data is stored, and who the data owner is. Your data classification and handling scheme should consider the applicable legal and compliance requirements of your workload and what data controls are needed. Understanding the data is the first step in the data classification journey. "

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec07_common_tags, {
    choice_id = "sec_data_classification_identify_data"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec07_bp02" {
  title       = "BP02 Apply data protection controls based on data sensitivity"
  description = "Apply data protection controls that provide an appropriate level of control for each class of data defined in your classification policy. This practice can allow you to protect sensitive data from unauthorized access and use, while preserving the availability and use of data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec07_common_tags, {
    choice_id = "sec_data_classification_define_protection"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec07_bp03" {
  title       = "BP03 Define scalable data lifecycle management"
  description = "Understand your data lifecycle requirements as they relate to your different levels of data classification and handling.  This can include how data is handled when it first enters your environment, how data is transformed, and the rules for its destruction. Consider factors such as retention periods, access, auditing, and tracking provenance."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec07_common_tags, {
    choice_id = "sec_data_classification_lifecycle_management"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec07_bp04" {
  title       = "BP04 Automate identification and classification"
  description = "Automating the identification and classification of data can help you implement the correct controls. Using automation to augment manual determination reduces the risk of human error and exposure."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec07_common_tags, {
    choice_id = "sec_data_classification_auto_classification"
    risk      = "UNANSWERED"
  })
}