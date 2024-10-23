provider "volterra" {
  api_p12_file = var.f5xc_api_p12_file
  url          = var.f5xc_api_url
  alias        = "default"
}

provider "restful" {
  alias         = "f5xc"
  base_url      = var.f5xc_api_url
  update_method = "PUT"
  create_method = "POST"
  delete_method = "DELETE"

  client = {
    retry = {
      status_codes = [500, 502, 503, 504]
      count           = 3
      wait_in_sec     = 1
      max_wait_in_sec = 120
    }
  }

  security = {
    apikey = [
      {
        in   = "header"
        name = "Authorization"
        value = format("APIToken %s", var.f5xc_api_token)
      }
    ]
  }
}

provider "restful" {
  alias         = "f5os"
  base_url      = "${var.f5os_api_schema}://${var.f5os_api_address}:${var.f5os_api_port}/${var.f5os_api_base_uri}"
  update_method = "PUT"
  create_method = "POST"
  delete_method = "DELETE"

  client = {
    retry = {
      status_codes = [500, 502, 503, 504]
      count           = 3
      wait_in_sec     = 1
      max_wait_in_sec = 120
    }
  }

  security = {
    http = {
      basic = {
        username = var.f5os_api_username
        password = var.f5os_api_password
      }
    }
  }
}

provider "http-full" {
  alias = "default"
}