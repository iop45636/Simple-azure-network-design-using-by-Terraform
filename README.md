This is simple Terraform testing include azure 5 services(resource group, vnet, vm, disk, network interface)

Make sure you login azure account in vscode

First move to the folder and run <terraform init> for .tf file

run <terraform plan> see what Azure service is building
  
run <terraform apply> for deploy service to Azure 

when you are successful, you can go to Azure Portal see the service

If you want to delete all services, you can run <terraform destroy> for delete all services 
  
