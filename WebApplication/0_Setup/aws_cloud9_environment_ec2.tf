resource "aws_cloud9_environment_ec2" "this" {
  instance_type = "t2.micro"
  name = "Development"
}
