# Prompt for VPC ID and deployment language
variable "vpc_id" {
  description = "ID of the VPC where the Elastic Beanstalk environment will be deployed"
  default = "vpc-0a706eb0a6926de59"
}

variable "deployment_language" {
  description = "Programming language used in the Elastic Beanstalk environment"
  default = "PHP 8.1"
}

variable "region" {
    description = "The region to deploy"
    default = "me-south-1"
  
}

variable "subnet1" {
    description = "Subnet ID of first zone"
    default = ["subnet-0ab7e8783501a2c34" , "subnet-006299ba4503d9467"]
  
}

#variable "subnet2" {
#    description = "Subnet ID of the second zone"
#}

variable "instance_type" {
    description = "The type of instance"
    default = "t3.micro"
  
}
