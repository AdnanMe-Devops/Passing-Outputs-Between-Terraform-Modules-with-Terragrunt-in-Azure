# Generate provider configuration for all child directories
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
  backend "azurerm" {}

}

provider "azurerm" {
  features {}
}
EOF
}
The generate block allows Terraform resource blocks to be written on the fly when using 

Terragrunt. This strategy can be used to customize the provider and terraform blocks to 

use the same configuration settings in all subfolders. 

 
