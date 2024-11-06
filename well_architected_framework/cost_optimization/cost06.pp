locals {
  well_architected_framework_cost06_common_tags = merge(local.well_architected_framework_cost_optimization_common_tags, {
    question_id = "type-size-number-resources"
  })
}

benchmark "well_architected_framework_cost06" {
  title       = "COST06 How do you meet cost targets when you select resource type, size and number?"
  description = ""
  children = [
    benchmark.well_architected_framework_cost06_bp01,
    benchmark.well_architected_framework_cost06_bp02,
    benchmark.well_architected_framework_cost06_bp03,
    benchmark.well_architected_framework_cost06_bp04
  ]

  tags = local.well_architected_framework_cost06_common_tags
}

benchmark "well_architected_framework_cost06_bp01" {
  title       = "BP01 Perform cost modeling"
  description = "Identify organization requirements (such as business needs and existing commitments) and perform cost modeling (overall costs) of the workload and each of its components. Perform benchmark activities for the workload under different predicted loads and compare the costs. The modeling effort should reflect the potential benefit. For example, time spent is proportional to component cost."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost06_common_tags, {
    choice_id = "cost_type_size_number_resources_cost_modeling"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost06_bp02" {
  title       = "BP02 Select resource type, size, and number based on data"
  description = "Select resource size or type based on data about the workload and resource characteristics. For example, compute, memory, throughput, or write intensive. This selection is typically made using a previous (on-premises) version of the workload, using documentation, or using other sources of information about the workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost06_common_tags, {
    choice_id = "cost_type_size_number_resources_data"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost06_bp03" {
  title       = "BP03 Consider using shared resources"
  description = "For already-deployed services at the organization level for multiple business units, consider using shared resources to increase utilization and reduce total cost of ownership (TCO). Using shared resources can be a cost-effective option to centralize the management and costs by using existing solutions, sharing components, or both. Manage common functions like monitoring, backups, and connectivity either within an account boundary or in a dedicated account. You can also reduce cost by implementing standardization, reducing duplication, and reducing complexity."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost06_common_tags, {
    choice_id = "cost_type_size_number_resources_shared"
    risk      = "UNANSWERED"
  })
}

benchmark "well_architected_framework_cost06_bp04" {
  title       = "BP04 Select resource type, size, and number automatically based on metrics"
  description = "Use metrics from the currently running workload to select the right size and type to optimize for cost. Appropriately provision throughput, sizing, and storage for compute, storage, data, and networking services. This can be done with a feedback loop such as automatic scaling or by custom code in the workload."

  children = [
    control.wafr_undefined
  ]

  tags = merge(local.well_architected_framework_cost06_common_tags, {
    choice_id = "cost_type_size_number_resources_metrics"
    risk      = "UNANSWERED"
  })
}