variable "AWS_REGION" {
  type = string
  default = "us-east-1"
}

variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "TAG_PREFIX" {
  type = string
}

variable "AMI_ID" {
  type    = string
  default = "ami-02e136e904f3da870"
}

variable "VPC_PREFIX" {
  type = string
  default = "10.0"
}

variable "DATABASE_IDENTIFIER" {
  type = string
}

variable "DATABASE_PORT" {
  type = number
}

variable "SNAPSHOT_IDENTIFIER" {
  type = string
}

variable "PATH_TO_WEBSERVER_PUBLIC_KEY" {
  type = string
}

variable "PATH_TO_BASTION_PUBLIC_KEY" {
  type = string
}

variable "APP_PORT" {
  type = number
}
