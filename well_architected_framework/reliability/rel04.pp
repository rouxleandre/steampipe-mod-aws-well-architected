locals {
  well_architected_framework_rel04_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "prevent-interaction-failure"
  })
}

benchmark "well_architected_framework_rel04" {
  title       = "REL04 How do you design interactions in a distributed system to prevent failures?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel04_bp01,
    benchmark.well_architected_framework_rel04_bp02,
    benchmark.well_architected_framework_rel04_bp03,
    benchmark.well_architected_framework_rel04_bp04
  ]

  tags = local.well_architected_framework_rel04_common_tags
}

benchmark "well_architected_framework_rel04_bp01" {
  title       = "BP01 Identify the kind of distributed systems you depend on"
  description = "Distributed systems can be synchronous, asynchronous, or batch. Synchronous systems must process requests as quickly as possible and communicate with each other by making synchronous request and response calls using HTTP/S, REST, or remote procedure call (RPC) protocols. Asynchronous systems communicate with each other by exchanging data asynchronously through an intermediary service without coupling individual systems. Batch systems receive a large volume of input data, run automated data processes without human intervention, and generate output data."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel04_common_tags, {
    choice_id = "rel_prevent_interaction_failure_identify"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel04_bp02" {
  title       = "BP02 Implement loosely coupled dependencies"
  description = "Dependencies such as queuing systems, streaming systems, workflows, and load balancers are loosely coupled. Loose coupling helps isolate behavior of a component from other components that depend on it, increasing resiliency and agility."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel04_common_tags, {
    choice_id = "rel_prevent_interaction_failure_loosely_coupled_system"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel04_bp03" {
  title       = "BP03 Make all responses idempotent"
  description = "An idempotent service promises that each request is completed exactly once, such that making multiple identical requests has the same effect as making a single request. An idempotent service makes it easier for a client to implement retries without fear that a request will be erroneously processed multiple times. To do this, clients can issue API requests with an idempotency token—the same token is used whenever the request is repeated. An idempotent service API uses the token to return a response identical to the response that was returned the first time that the request was completed."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel04_common_tags, {
    choice_id = "rel_prevent_interaction_failure_idempotent"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel04_bp04" {
  title       = "BP04 Do constant work"
  description = "Systems can fail when there are large, rapid changes in load. For example, if your workload is doing a health check that monitors the health of thousands of servers, it should send the same size payload (a full snapshot of the current state) each time. Whether no servers are failing, or all of them, the health check system is doing constant work with no large, rapid changes."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel04_common_tags, {
    choice_id = "rel_prevent_interaction_failure_constant_work"
    risk      = "UNANSWERED"
  })
}