# terraform-basics
This repository contains all the basics that are needed to start terraform learning.

As of this batch, the version of terraform we are going to user is 1.3.7

### Terraform Installation Can be done using the below commands or by the tools script.

```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform
```

### terraform.tfvars is the default variables file that terraform picks up automatically. Anything apart from terraform.tfvars won't be picked by terraform by default, so you need to supply it explicitly.