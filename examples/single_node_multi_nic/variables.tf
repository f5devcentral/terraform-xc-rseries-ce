variable "owner" {
  description = "AWS tag owner email address"
  type        = string
}

variable "project_prefix" {
  type        = string
  description = "prefix string put in front of string"
}

variable "project_suffix" {
  type        = string
  description = "prefix string put at the end of string"
}

variable "ssh_public_key_file" {
  description = "path to ssh public key file"
  type        = string
}

variable "f5xc_api_p12_file" {
  description = "F5 XC API certificate file"
  type        = string
}

variable "f5xc_api_url" {
  description = "F5 XC API URL"
  type        = string
}

variable "f5xc_api_token" {
  description = "F5 XC API token"
  type        = string
  default     = ""
}

variable "f5xc_tenant" {
  description = "F5 XC Tenant name"
  type        = string
}

variable "f5xc_namespace" {
  description = "F5 XC namespace name"
  type        = string
  default     = "system"
}

variable "f5xc_cluster_name" {
  description = "F5 XC CE cluster name"
  type        = string
}

variable "f5xc_ce_gateway_type" {
  description = "F5 XC CE gateway type"
  type        = string
  default     = "ingress_egress_gateway"
}

variable "f5xc_sms_provider_name" {
  type    = string
  default = "rseries"
}

variable "f5xc_sms_master_nodes_count" {
  type    = number
  default = 1
}

variable "f5xc_ce_sli_interface" {
  type    = string
  default = "enp2s0"
}

variable "f5xc_api_p12_cert_password" {
  description = "F5 XC API certificate file password"
  type        = string
}

variable "f5os_api_port" {
  type = number
}

variable "f5os_api_address" {
  type = string
}

variable "f5os_api_username" {
  type = string
}

variable "f5os_api_password" {
  type = string
}

variable "f5os_api_schema" {
  type    = string
  default = "https"
}

variable "f5os_api_base_uri" {
  type    = string
  default = "restconf/data"
}

variable "f5os_tenant_config_memory" {
  type = number
}

variable "f5os_tenant_config_image" {
  type = string
}

variable "f5os_tenant_config_nodes" {
  type = list(number)
}

variable "f5os_tenant_config_metadata" {
  type = list(string)
}

variable "f5os_tenant_config_vlans" {
  type = list(number)
}

variable "f5os_tenant_config_storage_size" {
  type = number
}

variable "f5os_tenant_config_vcpu_cores_per_node" {
  type = number
}