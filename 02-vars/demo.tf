variable "sample" {
    default = "Hello World!"
}

output "sample-op" {
    value = var.sample
}

output "sample-op1" {
    value = "Value is ${var.sample}"
}

# A variable can be accessed with or without ${} only if the variable is called. But in case if it is needed to add with some other strings then we need to use double
# There is no concept of single quores in terraform.

variable "number" {
    default = 100
}

output "number" {
    value = var.number
}

#Declaring a list variable

variable "ex-list" {
    default = [
        "AWS",
        "GCP",
        "DevOPs",
        100,
        true,
        "Verma"
    ]
}

# From the above list, you can see that data in list can be of any type indivudually. 
output "ex-list-op" {
    value = "Welcome to ${var.ex-list[2]} batch 50, this contains ${var.ex-list[3]} chapters and the trainer is ${var.ex-list[5]}"
}

# Declaring a map variable

variable "ex-map" {
    default = {
        Class = "DevOps",
        Duration = 85,
        Trainer = "Verma",
        Batch = "0600AM"
    }
  
}

output "ex-map" {
    value = "welcome to ${var.ex-map["Class"]} training and schedule of training is ${var.ex-map["Duration"]} hours and scheduled time is ${var.ex-map["Batch"]}"
}

variable "city" {}

output "city" {
    value = "city name is ${var.city}"
}

variable "state" {}

output "state" {
    value = var.state
}