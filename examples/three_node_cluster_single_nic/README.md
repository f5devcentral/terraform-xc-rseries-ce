# Example three node ce cluster with single nic

This example instantiates:

- Three node CE cluster
- F5OS tenant

# Usage

- Export F5 XC API certificate password with:
    * `export VES_P12_PASSWORD="p12 password"`
    * `export TF_VAR_f5xc_api_p12_cert_password="$VES_P12_PASSWORD"`
- Edit `terraform.tfvars` file to align with your environment
- Copy F5XC API certificate file obtained in installation step into example directory
- Initialize with: `terraform init`, optionally run `terraform plan`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`