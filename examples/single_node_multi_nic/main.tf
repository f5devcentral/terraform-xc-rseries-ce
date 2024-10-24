module "f5xc_rseries_ce_single_node_multi_nic" {
  source                                 = "../../modules/f5xc/ce/rseries"
  f5os_tenant                            = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
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
  f5xc_site_name                         = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_ce_gw_type                        = var.f5xc_ce_gateway_type
  f5xc_sms_provider_name                 = var.f5xc_sms_provider_name
  f5xc_sms_master_nodes_count            = var.f5xc_sms_master_nodes_count
  f5xc_sms_perf_mode_l7_enhanced         = true
  f5xc_ce_interface_list = [
    {
      mtu           = 1500
      name = format("%s_%s", var.f5xc_ce_sli_interface, var.f5os_tenant_config_vlans[1])
      labels = {}
      priority      = 0
      is_primary    = false
      dhcp_client = {}
      is_management = false
      description   = "SLI"
      network_option = {
        site_local_inside_network = {}
      },
      vlan_interface = {
        device  = var.f5xc_ce_sli_interface
        vlan_id = var.f5os_tenant_config_vlans[1]
      }
    }
  ]
  providers = {
    restful.f5xc = restful.f5xc
    restful.f5os = restful.f5os
  }
}

output "f5xc_rseries_ce_single_node_multi_nic" {
  value = module.f5xc_rseries_ce_single_node_multi_nic
}