# Intentionally poorly formatted and invalid file
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

variable "file_content" {
  # tflint issue: Missing a type and description for the variable
  default = "Hello World!"
}

resource "local_file" "demo" {
      filename = "${path.module}/demo.txt"
  content  = var.file_content
  
  # terraform validate issue: "invalid_argument" does not exist in this resource
  invalid_argument = "this will break validation" 
}
