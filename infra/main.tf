terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.regiao_aws

}

resource "aws_instance" "app_server" {
  ami           = "ami-0c1b4dff690b5d229"
  instance_type = var.instancia
  key_name = var.chave
  
  tags = {
    Name = "Terraform Ansible Python"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = var.chave
  public_key = file("${var.chave}.pub")
}
