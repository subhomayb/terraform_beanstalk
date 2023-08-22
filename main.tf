# Define the provider
provider "aws" {
  region = var.region
}

# Create the Elastic Beanstalk environment
resource "aws_elastic_beanstalk_application" "tf-test" {
  name                = "test-app"
  description = "Testing tf-elb"
  
}


resource "aws_elastic_beanstalk_environment" "tf-test-env" {
  name                = "test-app"
  application = aws_elastic_beanstalk_application.tf-test.name
  solution_stack_name = "64bit Amazon Linux 2 v3.5.5 running ${var.deployment_language}"
  tier = "WebServer"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "IamInstanceProfile"
    value = "aws-elasticbeanstalk-ec2-role"
  }
  
  setting {
    namespace = "aws:ec2:vpc"
    name = "VPCID"
    value = var.vpc_id
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = join(",", var.subnet1)
  }

  #setting {
  #  namespace = "aws:ec2:vpc"
  #  name      = "ELBSubnets"
  #  value     = join(",", var.subnet2)
  #}
  setting {
    namespace = "aws:ec2:instances"
    name = "InstanceTypes"
    value = var.instance_type
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "AssociatePublicIpAddress"
    value     = "true"
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBScheme"
    value     = "public"
  }

}
# Output the URL of the Elastic Beanstalk environment
output "url" {
  value = aws_elastic_beanstalk_environment.tf-test-env.endpoint_url
}
