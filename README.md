# Passing-Outputs-Between-Terraform-Modules-with-Terragrunt-in-Azure
Passing Outputs Between Terraform Modules with Terragrunt in Azure
With large Terraform projects, it is recommended to separate the Terraform state between infrastructure components that are changed daily and those rarely modified. For example, 
the Resource Group and subnet will be modified less frequently than a Virtual Machine that may be rebuilt and redeployed multiple times a day. Terragrunt helps split up 
infrastructure components in separate states using dependency blocks to order infrastructure components and pass data between components. 
The entire application infrastructure is deployed with separate states in just a single command. Keep in mind the terragrunt apply-all command should be used in the initial 
deployment of an environment. If for example  to modify one infrastructure component, for  the server configuration, you would just run terragrunt apply in the server directory to apply the chang
