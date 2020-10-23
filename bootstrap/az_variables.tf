variable "project" {
  type        = string
  description = "The name of the Project we are bootstrapping terraformscaffold for"
}

variable "region" {
  type        = string
  description = "The AWS Region into which we are bootstrapping terraformscaffold"
}

variable "environment" {
  type        = string
  description = "The name of the environment for the bootstrapping process; which is always bootstrap"
}

variable "component" {
  type        = string
  description = "The name of the component for the bootstrapping process; which is always bootstrap"
  default     = "bootstrap"
}

variable "storage_account_name" {
  type        = string
  description = "The name to use for the terraformscaffold storage account"
}

variable "tenant" {
  type        = string
  description = "The tenant id"
}

variable "app_id" {
  type        = string
  description = "The service principal id"
}

variable "subscription_id" {
  type        = string
  description = "The AZ Subscription ID into which we are bootstrapping terraformscaffold"
}