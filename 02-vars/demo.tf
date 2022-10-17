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

output "ex-list-op" {
    value = "Welcome to ${var.ex-list[2]} batch 50, this contains ${var.ex-list[3]} chapters and the trainer is ${var.ex-list[5]}"
}