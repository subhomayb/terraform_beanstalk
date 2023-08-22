variable "region" {
    description = "Please state the region"
  
}

variable "language" {
    description = "Please state the programming language"
  
}

variable "vpc_id" {
  description = "ID of the VPC where the Elastic Beanstalk environment will be deployed"
  default = "vpc-0a706eb0a6926de49"
}

variable "subnet" {
    description = "Subnet ID of first zone"
    default = ["subnet-0ab7e8783501a2c1d" , "subnet-006299ba4503d945b"]
  
}

variable "instance_type" {
    description = "The type of instance"
    #default = "t3.micro"
  
}