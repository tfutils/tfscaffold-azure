##
# Basic Required Variables for tfscaffold Components
##
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

##
# tfscaffold variables specific to this component
##

# This is the only primary variable to have its value defined as
# a default within its declaration in this file, because the variables
# purpose is as an identifier unique to this component, rather
# then to the environment from where all other variables come.

variable "component" {
  type        = string
  description = "The variable encapsulating the name of this component"
  default     = "lz"
}


##
# Variables specific to the "keyvault" Component
##
variable "component" {
  type        = string
  description = "The name of the component for the bootstrapping process; which is always bootstrap"
  default     = "bootstrap"
}

variable "password" {
  type        = "string"
  description = "The service principal password/client secret"
}

variable "passwordy_mcssl_passwordface" {
  type        = "string"
  description = "The auto prompt for ssl certificate password"
}
