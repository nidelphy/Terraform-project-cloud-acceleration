# Create an IAM instance profile
resource "aws_iam_instance_profile" "example_instance_profile" {
  name = "your-instance-profile-name" 
  role = aws_iam_role.my_role.name
}

# Launch an EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "your-ami-id"         # Replace with your desired AMI ID
  instance_type = "your-instance-type"  # Replace with your desired instance type
  key_name      = "your-key-pair-name"  # Replace with your actual key pair name
  iam_instance_profile = aws_iam_instance_profile.example_instance_profile.name

  tags = {
    Name = "your-instance-name" #Replace with your instance name 
  }
}
