variable "City" {}   # This is how you declare an empty variable.  

output "city-name" {
    value = "Name of the city is ${var.City}"
}


variable "State" {}

output "state-name" {
    value = "Name of the state is ${var.State}"
}

# Always ensure to delcare an empty variable before you use it.