module "f5xc_aws_cloud_ce_three_node_multi_nic_new_vpc_new_subnet" {
source                                 = "../../modules/f5xc/ce/rseries"
  f5os_tenant                            = format("%s-rseries-ce-test-%s", var.project_prefix, var.project_suffix)
  f5os_tenant_config_image               = var.f5os_tenant_config_image
  f5os_tenant_config_nodes               = var.f5os_tenant_config_nodes
  f5os_tenant_config_vlans               = var.f5os_tenant_config_vlans
  f5os_tenant_config_memory              = var.f5os_tenant_config_memory
  f5os_tenant_config_metadata            = var.f5os_tenant_config_metadata
  f5os_tenant_config_storage_size        = var.f5os_tenant_config_storage_size
  f5os_tenant_config_vcpu_cores_per_node = var.f5os_tenant_config_vcpu_cores_per_node
  f5xc_tenant                            = var.f5xc_tenant
  f5xc_api_url                           = var.f5xc_api_url
  f5xc_api_token                         = var.f5xc_api_token
  f5xc_namespace                         = var.f5xc_namespace
  f5xc_site_name                         = format("%s-rseries-ce-test-%s", var.project_prefix, var.project_suffix)
  f5xc_ce_gw_type                        = var.f5xc_ce_gateway_type
  f5xc_sms_provider_name                 = var.f5xc_sms_provider_name
  f5xc_sms_master_nodes_count            = var.f5xc_sms_master_nodes_count
  f5xc_sms_perf_mode_l7_enhanced         = true
  providers = {
    restful.f5xc = restful.f5xc
    restful.f5os = restful.f5os
  }
}

output "f5xc_aws_cloud_ce_three_node_multi_nic_new_vpc_new_subnet" {
  value = module.f5xc_aws_cloud_ce_three_node_multi_nic_new_vpc_new_subnet
}