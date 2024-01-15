#ReadMe

#Cloud Shell - Install Terraform
mkdir terra-ec2
cd terra-ec2/

#clone to Install
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/
tfenv install 1.2.5
tfenv use 1.2.5

#check version
terraform --version

#Operations

terraform init
terraform plan
terraform apply
#Enter a value: yes

#To Remove
terraform destroy