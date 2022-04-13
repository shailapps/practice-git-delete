// String data type
variable "sample" {
  default = "Hello"
}

// number data type, You cause floating values like 10.0
variable "sample1" {
  default = 100
}

// Boolean data type
variable "sample2" {
  default = true
}

output "sample" {
  value = var.sample
}

// Combine variable with other string
output "sample1" {
  value = "${var.sample}, Welcome"
}

variable "new-list" {
  default = ["Hello", 100]
}

variable "training" {
  default = {
    course_name = "DevOps",
    timings     = "6am"
    is_active   = true
  }
}

output "list1" {
  value = var.new-list[1]
}

output "map1" {
  value = var.training["course_name"]
}

output "training_info" {
  value = "Course Name = ${var.training["course_name"]} , Timings = ${var.training["timings"]}, Training is Running = ${var.training["is_active"]}"
}

variable "new1" {}
output "new1" {
  value = var.new1
}
