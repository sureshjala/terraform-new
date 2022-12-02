# creating ec2 instance for docker 
resource "aws_instance" "docker" {
    ami = var.ami
    associate_public_ip_address = true
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    subnet_id = var.subnet_id
    tags = {
      "Name" = "docker"
    }
}
# creating null resource & provisioner for ec2 instance
resource "null_resource" "dockerprovisoner" {
  triggers = {
    running_number = var.docker-trigger
  }

  provisioner "remote-exec" {

      connection {
      type = "ssh"  
      user = "ubuntu"
      private_key = "${file("~/.ssh/id_rsa")}"
      port = 22
      host = aws_instance.docker.public_ip
    }
# installing angular application in ec2 instance
    inline = [
        "curl -fsSL https://get.docker.com -o get-docker.sh",
        "sh get-docker.sh",
        "sudo usermod -aG docker ubuntu"

    ]
  

    }
    depends_on = [
        aws_instance.docker
    ]
  
}