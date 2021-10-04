terraform workspace new dev
terraform workspace new prod
terraform workspace list
terraform workspace select prod
terraform apply -var-file prod.tfvars
terraform destroy -var-file prod.tfvars
