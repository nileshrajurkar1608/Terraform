variable "sample" {
    default = "Hello World!"
}

output "sample-op" {
    value = var.sample
}

output "sample-op1" {
    value = "Value is ${var.sample}"
}

variable "number" {
    default = 100
}

output "number" {
    value = var.number
}