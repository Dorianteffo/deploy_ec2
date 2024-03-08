tf-init :
	terraform -chdir=./terraform init 

tf-plan: 
	terraform -chdir=./terraform plan 


tf-apply: 
	terraform -chdir=./terraform apply


ec2-private-key: 
	terraform -chdir=./terraform output -raw private_key


ec2-dns: 
	terraform -chdir=./terraform output -raw ec2_public_dns


tf-destroy: 
	terraform -chdir=./terraform destroy



