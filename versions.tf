terraform {
  required_version = ">= 1.4.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.64.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.1"
    }

    local = {
      source  = "hashicorp/local"
      version = ">= 2.4.0"
    }
  }
}
