variable "product" {
  type    = "string"
  default = "cmc"
}

variable "microservice" {
  type = "string"
  default = "pdf-service"
}

variable "location" {
  type    = "string"
  default = "UK South"
}

variable "env" {
  type = "string"
}

variable "infrastructure_env" {
  default     = "dev"
  description = "Infrastructure environment to point to"
}
