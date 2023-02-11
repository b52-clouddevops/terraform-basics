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

### Indentation  
```
Terraform is not indentations specific like ANSIBLE.
But for better look and feel, it's always recommended to use standard spacing ,aling all your equal signs and two spaces in any new block.
```


### What happens if you run the terraform apply multiple times ????

```
    a) Is it going to create the infrastructure n number of times ? No! But, how ????
  sol) Terraform State File 

```

### What is Terraform State File ?

```

This is a file or a registry which tracks all of the infra provisioned by it.

So, only when you make changes in the code, that means when you apply terraform or plan , terraform validates the real infra against your code and if there are no code changes "Terraform prompts you that there are no changes!!!", ins case if you update the changes on the infra manually or update the code , in either of the case, for terraform code matters and terraform code is the single source of truth.

```

### Terraform Modules 

```
    *   Module is nothing but a folder with a group of resources
    *   It helps you to keep the code dry 
    *   You cannot pass the data from X-Module to Y-Module directly, it can only passed from X-Module to root module and then root module to Y-Module.

```

### Common Wording in modules

```
    1) Backend Module
    2) Root Module 

```


### How to fetch th information of the already existing resources on cloud using terraform ?

```
    *   Datasource
```