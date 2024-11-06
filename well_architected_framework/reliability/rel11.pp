locals {
  well_architected_framework_rel11_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "withstand-component-failures"
  })
}

benchmark "well_architected_framework_rel11" {
  title       = "REL11 How do you design your workload to withstand component failures?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel11_bp01,
    benchmark.well_architected_framework_rel11_bp02,
    benchmark.well_architected_framework_rel11_bp03,
    benchmark.well_architected_framework_rel11_bp04,
    benchmark.well_architected_framework_rel11_bp05,
    benchmark.well_architected_framework_rel11_bp06,
    benchmark.well_architected_framework_rel11_bp07
  ]

  tags = local.well_architected_framework_rel11_common_tags
}

benchmark "well_architected_framework_rel11_bp01" {
  title       = "BP01 Monitor all components of the workload to detect failures"
  description = "Continually monitor the health of your workload so that you and your automated systems are aware of failures or degradations as soon as they occur. Monitor for key performance indicators (KPIs) based on business value."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_monitoring_health"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel11_bp02" {
  title       = "BP02 Fail over to healthy resources"
  description = "If a resource failure occurs, healthy resources should continue to serve requests. For location impairments (such as Availability Zone or AWS Region), ensure that you have systems in place to fail over to healthy resources in unimpaired locations."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_failover2good"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel11_bp03" {
  title       = "BP03 Automate healing on all layers"
  description = "Upon detection of a failure, use automated capabilities to perform actions to remediate. Degradations may be automatically healed through internal service mechanisms or require resources to be restarted or removed through remediation actions."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_auto_healing_system"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel11_bp04" {
  title       = "BP04 Rely on the data plane and not the control plane during recovery"
  description = "Control planes provide the administrative APIs used to create, read and describe, update, delete, and list (CRUDL) resources, while data planes handle day-to-day service traffic. When implementing recovery or mitigation responses to potentially resiliency-impacting events, focus on using a minimal number of control plane operations to recover, rescale, restore, heal, or failover the service. Data plane action should supersede any activity during these degradation events."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_avoid_control_plane"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel11_bp05" {
  title       = "BP05 Use static stability to prevent bimodal behavior"
  description = "Workloads should be statically stable and only operate in a single normal mode. Bimodal behavior is when your workload exhibits different behavior under normal and failure modes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_static_stability"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel11_bp06" {
  title       = "BP06 Send notifications when events impact availability"
  description = "Notifications are sent upon the detection of thresholds breached, even if the event causing by the issue was automatically resolved."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_notifications_sent_system"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel11_bp07" {
  title       = "BP07 Architect your product to meet availability targets and uptime service level agreements (SLAs)"
  description = "Architect your product to meet availability targets and uptime service level agreements (SLAs). If you publish or privately agree to availability targets or uptime SLAs, verify that your architecture and operational processes are designed to support them."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel11_common_tags, {
    choice_id = "rel_withstand_component_failures_service_level_agreements"
    risk      = "UNANSWERED"
  })
}