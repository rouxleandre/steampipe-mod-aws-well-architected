locals {
  well_architected_framework_sec10_common_tags = merge(local.well_architected_framework_security_common_tags, {
    question_id = "incident-response"
  })
}

benchmark "well_architected_framework_sec10" {
  title       = "SEC10 How do you anticipate, respond to, and recover from incidents?"
  description = ""
  children = [
    benchmark.well_architected_framework_sec10_bp01,
    benchmark.well_architected_framework_sec10_bp02,
    benchmark.well_architected_framework_sec10_bp03,
    benchmark.well_architected_framework_sec10_bp04,
    benchmark.well_architected_framework_sec10_bp05,
    benchmark.well_architected_framework_sec10_bp06,
    benchmark.well_architected_framework_sec10_bp07,
    benchmark.well_architected_framework_sec10_bp08
  ]

  tags = local.well_architected_framework_sec10_common_tags
}

benchmark "well_architected_framework_sec10_bp01" {
  title       = "BP01 Identify key personnel and external resources"
  description = "Identify internal and external personnel, resources, and legal obligations that would help your organization respond to an incident."

  children = [
    aws_compliance.control.iam_support_role
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_identify_personnel"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp02" {
  title       = "BP02 Develop incident management plans"
  description = "The first document to develop for incident response is the incident response plan. The incident response plan is designed to be the foundation for your incident response program and strategy."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_develop_management_plans"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp03" {
  title       = "BP03 Prepare forensic capabilities"
  description = "Ahead of a security incident, consider developing forensics capabilities to support security event investigations."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_prepare_forensic"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp04" {
  title       = "BP04 Develop and test security incident response playbooks"
  description = "A key part of preparing your incident response processes is developing playbooks. Incident response playbooks provide a series of prescriptive guidance and steps to follow when a security event occurs. Having clear structure and steps simplifies the response and reduces the likelihood for human error."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_playbooks"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp05" {
  title       = "BP05 Pre-provision access"
  description = "Verify that incident responders have the correct access pre-provisioned in AWS to reduce the time needed for investigation through to recovery."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_pre_provision_access"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp06" {
  title       = "BP06 Run simulations"
  description = "As organizations grow and evolve over time, so does the threat landscape, making it important to continually review your incident response capabilities. Running simulations (also known as game days) is one method that can be used to perform this assessment. Simulations use real-world security event scenarios designed to mimic a threat actor’s tactics, techniques, and procedures (TTPs) and allow an organization to exercise and evaluate their incident response capabilities by responding to these mock cyber events as they might occur in reality."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_run_game_days"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp07" {
  title       = "BP07 Establish a framework for learning from incidents"
  description = "Implementing a lessons learned framework and root cause analysis capability will not only help improve incident response capabilities, but also help prevent the incident from recurring. By learning from each incident, you can help avoid repeating the same mistakes, exposures, or misconfigurations, not only improving your security posture, but also minimizing time lost to preventable situations."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_establish_incident_framework"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_sec10_bp08" {
  title       = "BP08 Pre-deploy tools"
  description = "Verify that security personnel have the right tools pre-deployed to reduce the time for investigation through to recovery."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_sec10_common_tags, {
    choice_id = "sec_incident_response_pre_deploy_tools"
    risk      = "UNANSWERED"
  })
}