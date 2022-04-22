terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.11.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.1"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.1"
    }
  }
}
