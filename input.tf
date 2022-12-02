variable "docker-trigger" {
    type = string
    description = "giving the trigger to the null resource"
    default = "1.2"
}
variable "region" {
    type      =  string
    default   =  "us-west-2"
  
}
variable "key_name" {
    type = string
    default = "id_rsa"

  
}
variable "ami" {
    type = string
    default = "ami-017fecd1353bcc96e"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "vpc_security_group_ids" {
    type = list(string)
    default = [ "sg-06ca35c08399b1122" ]
  
}
variable "subnet_id" {
    type = string
    default = "subnet-0c8b7a6ba91a5758c"
  
}