locals {
  well_architected_framework_rel03_common_tags = merge(local.well_architected_framework_reliability_common_tags, {
    question_id = "service-architecture"
  })
}

benchmark "well_architected_framework_rel03" {
  title       = "REL03 How do you design your workload service architecture?"
  description = ""
  children = [
    benchmark.well_architected_framework_rel03_bp01,
    benchmark.well_architected_framework_rel03_bp02,
    benchmark.well_architected_framework_rel03_bp03
  ]

  tags = local.well_architected_framework_rel03_common_tags
}

benchmark "well_architected_framework_rel03_bp01" {
  title       = "BP01 Choose how to segment your workload"
  description = "Workload segmentation is important when determining the resilience requirements of your application. Monolithic architecture should be avoided whenever possible. Instead, carefully consider which application components can be broken out into microservices. Depending on your application requirements, this may end up being a combination of a service-oriented architecture (SOA) with microservices where possible. Workloads that are capable of statelessness are more capable of being deployed as microservices."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel03_common_tags, {
    choice_id = "rel_service_architecture_monolith_soa_microservice"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel03_bp02" {
  title       = "BP02 Build services focused on specific business domains and functionality"
  description = "Service-oriented architectures (SOA) define services with well-delineated functions defined by business needs. Microservices use domain models and bounded context to draw service boundaries along business context boundaries. Focusing on business domains and functionality helps teams define independent reliability requirements for their services. Bounded contexts isolate and encapsulate business logic, allowing teams to better reason about how to handle failures."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel03_common_tags, {
    choice_id = "rel_service_architecture_business_domains"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_rel03_bp03" {
  title       = "BP03 Provide service contracts per API"
  description = "Service contracts are documented agreements between API producers and consumers defined in a machine-readable API definition. A contract versioning strategy allows consumers to continue using the existing API and migrate their applications to a newer API when they are ready. Producer deployment can happen any time as long as the contract is followed. Service teams can use the technology stack of their choice to satisfy the API contract."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_rel03_common_tags, {
    choice_id = "rel_service_architecture_api_contracts"
    risk      = "UNANSWERED"
  })
}