resource "aws_launch_template" "lt" {
  name_prefix   = "web-template"
  image_id      = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = base64encode(<<-EOF
              #!/bin/bash
              apt update -y
              apt install -y apache2
              echo "Hello from $(hostname)" > /var/www/html/index.html
              systemctl start apache2
              systemctl enable apache2
              EOF
  )
}