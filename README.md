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


Variables :

```
1) default 
2) terraform.auto.tfvars
3) terraform.tfvars 
4) Command Line Variables 
5) Shell Variables 

PS : Among all, SHELL variables will have the least priority and Command line variable -var will have the highest priority.
```


### Argument vs Attributes

```
* Argument  : Properties of the resource we specify to create the resournce 
* Attribute : This comes in to picture once the infra is created, properties like instance id, public id and private.

```

# Indentation  
```
Terraform is not indentations specific like ANSIBLE.
But for better look and feel, it's always recommended to use standard spacing ,aling all your equal signs and two spaces in any new block.
```