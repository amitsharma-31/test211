terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

variable "file_content" {
  type        = string
  description = "The text content that will be written to the local file."
  default     = "Hello World!"
}

resource "local_file" "demo" {
  filename = "${path.module}/demo.txt"
  content  = var.file_content
}
