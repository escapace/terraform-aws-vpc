terraform {
  required_version = ">=1.5.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.24.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">=3.2.1"
    }

    local = {
      source  = "hashicorp/local"
      version = ">=2.4.0"
    }
  }
}
