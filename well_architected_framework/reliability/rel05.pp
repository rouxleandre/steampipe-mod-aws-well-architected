locals {
  well_architected_framework_rel05_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "mitigate-interaction-failure"
  })
}

benchmark "well_architected_framework_rel05" {
  title       = "REL05 How do you design interactions in a distributed system to mitigate or withstand failures?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel05_bp01,
    benchmark.well_architected_framework_rel05_bp02,
    benchmark.well_architected_framework_rel05_bp03,
    benchmark.well_architected_framework_rel05_bp04,
    benchmark.well_architected_framework_rel05_bp05,
    benchmark.well_architected_framework_rel05_bp06,
    benchmark.well_architected_framework_rel05_bp07
  ]

  tags = local.well_architected_framework_rel05_common_tags
}

benchmark "well_architected_framework_rel05_bp01" {
  title       = "BP01 Implement graceful degradation to transform applicable hard dependencies into soft dependencies"
  description = "Application components should continue to perform their core function even if dependencies become unavailable. They might be serving slightly stale data, alternate data, or even no data. This ensures overall system function is only minimally impeded by localized failures while delivering the central business value."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_graceful_degradation"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel05_bp02" {
  title       = "BP02 Throttle requests"
  description = "Throttle requests to mitigate resource exhaustion due to unexpected increases in demand. Requests below throttling rates are processed while those over the defined limit are rejected with a return a message indicating the request was throttled."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_throttle_requests"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel05_bp03" {
  title       = "BP03 Control and limit retry calls"
  description = "Use exponential backoff to retry requests at progressively longer intervals between each retry. Introduce jitter between retries to randomize retry intervals. Limit the maximum number of retries."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_limit_retries"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel05_bp04" {
  title       = "BP04 Fail fast and limit queues"
  description = "When a service is unable to respond successfully to a request, fail fast. This allows resources associated with a request to be released, and permits a service to recover if it’s running out of resources. Failing fast is a well-established software design pattern that can be leveraged to build highly reliable workloads in the cloud. Queuing is also a well-established enterprise integration pattern that can smooth load and allow clients to release resources when asynchronous processing can be tolerated. When a service is able to respond successfully under normal conditions but fails when the rate of requests is too high, use a queue to buffer requests. However, do not allow a buildup of long queue backlogs that can result in processing stale requests that a client has already given up on."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_fail_fast"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel05_bp05" {
  title       = "BP05 Set client timeouts"
  description = "Set timeouts appropriately on connections and requests, verify them systematically, and do not rely on default values as they are not aware of workload specifics."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_client_timeouts"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel05_bp06" {
  title       = "BP06 Make systems stateless where possible"
  description = "Systems should either not require state, or should offload state such that between different client requests, there is no dependence on locally stored data on disk and in memory. This allows servers to be replaced at will without causing an availability impact."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_stateless"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel05_bp07" {
  title       = "BP07 Implement emergency levers"
  description = "Emergency levers are rapid processes that can mitigate availability impact on your workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel05_common_tags, {
    choice_id = "rel_mitigate_interaction_failure_emergency_levers"
    risk      = "UNANSWERED"
  })
}