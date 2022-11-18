variable "name" {
    type        = string
    description = "My name"
}

resource "random_id" "example" {
    byte_length = 8
}

output "my_concatenated_name" {
    value = "${var.name}-${random_id.example.hex}"
}