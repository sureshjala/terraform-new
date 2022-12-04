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
variable "private_key" {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqCi01UcS7NefbJFOB4FdUsfU281i6nMauOGTDlG0epl4nHcghqdgr+FI24bX3xjj+HFPFKRkjrk9ywuZ4A6hP5YBlJGGoXH4/H9IJ6PRxiaV11VDC669U/EnVCurg6tPALeiXxH3l98i9WUhcZfReWIcJVzLpnZ+BZZpglbo3UQiUJ0c5aVj+CmyqAD3bp6Lyf4OBS4ZEg1ozNLJ+XaODYb/Bb1g7CNzfsBOwaxeCz6saTaWIsAPJFC0pbfL9Z90tWmUOlznjxZ5xMA/Qi2B0uvfjFVMFkMmDzN+7ByCBO8A59mTU5YJPZ4+RveyLmH59d81e6yA/JEBUXM4gG/y1+ZA1B50vGO5UDNX5fwsRZ921wMCcm9Ittz30H7nBq34CWlE8omzxxKLe88gnwtrCpVnbpOYjB1wNeFxTKLa1Epe2N0WePo81oE/pDH+HVpa9om4PU+vgKnZsSVCUaB99o7u3VanzI9hiJYWMAZwX8YxM1fGBuD+ZOcTiDHrPhqE= hp@DESKTOP-DBIKJUS"
  
}