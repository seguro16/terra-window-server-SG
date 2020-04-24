# Configure the AWS Provider- saml setup, too 
provider "aws" {

    region 					= "us-east-1"
	shared_credentials_file = "~/.aws/credentials"
	profile 				="saml"
	version 				="~>2.58"
}
# create the new windows server using your security group id
resource "aws_instance" "example" {
  ami        	= "ami-0c278895328cddfdd"
  instance_type = "t2.micro"
  key_name 		= "test-ssm"  
  vpc_security_group_ids	=["sg-0ba42f44dff8e55d4"]
}
