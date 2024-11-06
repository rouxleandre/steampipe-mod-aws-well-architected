locals {
  well_architected_framework_ops10_common_tags = merge(local.well_architected_framework_operational_excellence_common_tags, {
    question_id = "event-response"
  })
}

benchmark "well_architected_framework_ops10" {
  title       = "OPS10 How do you manage workload and operations events?"
  description = ""
  children = [
    benchmark.well_architected_framework_ops10_bp01,
    benchmark.well_architected_framework_ops10_bp02,
    benchmark.well_architected_framework_ops10_bp03,
    benchmark.well_architected_framework_ops10_bp04,
    benchmark.well_architected_framework_ops10_bp05,
    benchmark.well_architected_framework_ops10_bp06,
    benchmark.well_architected_framework_ops10_bp07
  ]

  tags = local.well_architected_framework_ops10_common_tags
}

benchmark "well_architected_framework_ops10_bp01" {
  title       = "BP01 Use a process for event, incident, and problem management"
  description = "The ability to efficiently manage events, incidents, and problems is key to maintaining workload health and performance. It's crucial to recognize and understand the differences between these elements to develop an effective response and resolution strategy. Establishing and following a well-defined process for each aspect helps your team swiftly and effectively handle any operational challenges that arise."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_event_incident_problem_process"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops10_bp02" {
  title       = "BP02 Have a process per alert"
  description = "Establishing a clear and defined process for each alert in your system is essential for effective and efficient incident management. This practice ensures that every alert leads to a specific, actionable response, improving the reliability and responsiveness of your operations."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_process_per_alert"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops10_bp03" {
  title       = "BP03 Prioritize operational events based on business impact"
  description = "Responding promptly to operational events is critical, but not all events are equal. When you prioritize based on business impact, you also prioritize addressing events with the potential for significant consequences, such as safety, financial loss, regulatory violations, or damage to reputation."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_prioritize_events"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops10_bp04" {
  title       = "BP04 Define escalation paths"
  description = "Establish clear escalation paths within your incident response protocols to facilitate timely and effective action. This includes specifying prompts for escalation, detailing the escalation process, and pre-approving actions to expedite decision-making and reduce mean time to resolution (MTTR)."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_define_escalation_paths"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops10_bp05" {
  title       = "BP05 Define a customer communication plan for service-impacting events"
  description = "Effective communication during service impacting events is critical to maintain trust and transparency with customers. A well-defined communication plan helps your organization quickly and clearly share information, both internally and externally, during incidents."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_push_notify"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops10_bp06" {
  title       = "BP06 Communicate status through dashboards"
  description = "Use dashboards as a strategic tool to convey real-time operational status and key metrics to different audiences, including internal technical teams, leadership, and customers. These dashboards offer a centralized, visual representation of system health and business performance, enhancing transparency and decision-making efficiency."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_dashboards"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_ops10_bp07" {
  title       = "BP07 Automate responses to events"
  description = "Automating event responses is key for fast, consistent, and error-free operational handling. Create streamlined processes and use tools to automatically manage and respond to events, minimizing manual interventions and enhancing operational effectiveness."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_ops10_common_tags, {
    choice_id = "ops_event_response_auto_event_response"
    risk      = "UNANSWERED"
  })
}