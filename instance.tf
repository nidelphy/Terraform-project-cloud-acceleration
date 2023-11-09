# Create an IAM instance profile
resource "aws_iam_instance_profile" "example_instance_profile" {
  name = "my-dnv-instance" 
  role = aws_iam_role.my_role.name
}

# Launch an EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "ami-0e8a34246278c21e4"         # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Replace with your desired instance type
  key_name      = "october23"  # Replace with your actual key pair name
  iam_instance_profile = aws_iam_instance_profile.example_instance_profile.name

  tags = {
    Name = "my-dnv-instance" #Replace with your instance name 
  }
}
