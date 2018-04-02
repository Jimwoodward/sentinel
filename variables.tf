variable "default_region" {
  default = "us-east-1"
}

### THESE should remain undefined and NOT SPECIFIED. They will be "inherited" from organizational variables.
variable "MGMT_TERRAFORM_ACCESS_KEY" {
  description = "Do not provide a default value or set this value in Atlas"
}

variable "MGMT_TERRAFORM_SECRET_KEY" {
  description = "Do not provide a default value or set this value in Atlas"
}

variable "name" {
  description = "The name of the bucket"
}

variable "ownership" {
  description = "Who owns the code"
  default = "Plankton"
}

variable "cool" {
  description = "How cool is the DevOps team?"
  default = "The coolest"
}

variable "edgar" {
  description = "Does Edgar Juarez like tacos?"
  default = "Yes"
}

variable "secure" {
  description = "How secure is Joseph Gimenez's laptop?"
  default = "3nKryPt1On"
}

variable "burger_train" {
  description = "ARE YOU READY FOR THE TRAIN?"
  default = "CHOO CHOO"
}

variable "allow_ip_ranges" {
  description = "the ip ranges, in CIDR notation, that are allowed to access the contents of the bucket"
}
