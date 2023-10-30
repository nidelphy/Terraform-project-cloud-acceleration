resource "aws_iam_role" "my_role" {
  name = "my-iam-role" 
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "my_policy" {
  name        = "my-iam-policy" 
  description = "My IAM Policy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "s3:ListBucket",
          "s3:GetBucketLocation",
        ],
        Resource = [
          "arn:aws:s3:::s3-bucket-name", # Replace with your S3 bucket ARN
        ],
        Effect = "Allow",
      },
      {
        Action = [
          "s3:GetObject",
        ],
        Resource = [
          "arn:aws:s3:::s3-bucket-name/*", # Replace with your S3 bucket ARN
        ],
        Effect = "Allow",
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "my_attachment" {
  policy_arn = aws_iam_policy.my_policy.arn
  role       = aws_iam_role.my_role.name
}
