# Define the variables that will be initialised in etc/{env,versions}_<region>_<environment>.tfvars...
variable "environment" {
  type        = "string"
  description = "The name of the environment"
}

variable "project" {
  type        = "string"
  description = "The name of the project"
}

variable "region" {
  type        = "string"
  description = "The region the deployment should happen in"
}

variable "tenant" {
  type        = "string"
  description = "The tenant id"
}

variable "app_id" {
  type        = "string"
  description = "The service app id; this is its name"
}

variable "service_principal_object_id" {
  type        = "string"
  description = "The service principal object id"
}

variable "password" {
  type        = "string"
  description = "The service principal password/client secret"
}

variable "passwordy_mcssl_passwordface" {
  type        = "string"
  description = "The auto prompt for ssl certificate password"
}