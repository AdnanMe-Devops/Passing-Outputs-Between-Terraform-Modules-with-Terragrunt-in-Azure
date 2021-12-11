network 
# Define dependencies on other modules
dependency "rg" {
  config_path = "../rg"
}

# Pass data in from a declared dependency
inputs = {
  rg_name = dependency.rg.outputs.rg_name
  rg_location = dependency.rg.outputs.rg_location
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}
The dependency block declares that the network folder configuration depends on the output from the Terraform configuration in the rg folder. Terragrunt will recognize this and 

wait to apply this configuration until the configuration in the rg folder has completed successfully during a terragrunt apply-all.

The inputs block contains the input that is passed into the Terraform configuration in the form of a TF_VAR_variablename environment variable, which is one of the ways to input 

variables into Terraform configurations. The output from the rg folder is passed in by declaring the dependency followed by the dependency label name and output value: 

dependency.rg.outputs.rg_name.  The data from the rg_name argument is passed into the  network  folder configuration as a variable:
