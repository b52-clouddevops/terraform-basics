output "sample" {
  value = "Hello World"
}

variable "demo" {
    value = "Terraform Training"
}

output "printing-demo" {
    value = "Value is ${var.demo}"
}

output "print-demo" {
    value = var.demo 
}

# Note : A variable can be accessed without ${} as well, only if its the only declared entry in the value part of the output. 
        // If you're using the variable in between the strings, you need to enclose them in the quotes and ${} . 
        // There is no concept of single quotes `'` in terraform