/* 
  #defining variables
  variable "environment" {
    type = string
  }

  variable "location" {
    type        = string
    default     = "eastus"
    description = "some description"
  }

  #defining variable with validations
  variable "env2" {
    type        = string
    description = "some description"

    validation {
      condition     = contains(["eastus", "westus"], lower(variable.env2))
      error_message = "Unsupported azure region. Supported includes: eastus, westus"
    }
  } 
*/

variable "AWS_ACCESS_KEY" {

}

variable "AWS_SECRET_KEY" {

}

variable "AWS_REGION" {
  default = "east-us-2"
}

/*
to provide the values in the terminal run the `terraform plan` with the following arguments
terraform plan -var AWS_ACCESS_KEY="value" -var AWS_SECRET_KEY="value"
*/
