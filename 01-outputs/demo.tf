output "sample" {
  value = "Hello World"
}

variable "demo" {
    default = "Terraform Training"
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


# This is how we declare a list variable
variable "example-list" {
    default = [
        "AWS",
        "DevOps",
        true,
        100,
        "SRE"
    ]
}

output "ex-list-op" {
    value = "Welcome to ${var.example-list[0]} and ${var.example-list[1]} Training, Training durations is ${var.example-list[3]} hours , we can also apply for ${var.example-list[4]} jobs"
}


# This is how we declare a map variable 
variable "ex-map" {
  default = {
        Duration = 105, 
        Trainer = "Verma", 
        Cloud = "AWS"
  }
}

output "ex-map-op" {
    value = "Welcome to DevOps with ${var.ex-map["Cloud"]} Training and the training duration is ${var.ex-map["Duration"]} , training name is ${var.ex-map["Trainer"]}"
}