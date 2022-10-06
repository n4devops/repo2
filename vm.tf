resource "aws_instance" "web" {
  
 
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  user_data = file("userdata.sh")
  tags = {
    Name = "vm1"
    

  }


/*provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "echo '<h1>Terraform Instance Launched Successfully</h1>' | sudo tee /var/www/html/index.html"
    ]
  }*/
}