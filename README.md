# AWS-Terraform-Beginner-Project
This repository contains a beginner-friendly AWS project using Terraform. Students can use this project as a hands-on introduction to provisioning AWS resources, configuring IAM roles and policies, and interacting with S3 buckets using Python and Boto3


STEPS
# Phase 1: S3 Bucket Creation
Task: Create an S3 bucket.

* Create Bucket: Use the provided Terraform configuration to create an Amazon S3 (Simple Storage Service) bucket.

* Bucket Name: Replace "my-unique-bucket-name" with a unique bucket name that adheres to S3 naming rules.

* Apply Configuration: Execute the Terraform commands to apply the configuration, thus creating your S3 bucket.

* Ready to Use: With the bucket created, it's now prepared for utilization in subsequent phases of the project.

# Phase 2: IAM Role Creation
Task: Create an IAM role allowing EC2 instances to access an S3 bucket.

* Create IAM Role: Use the provided Terraform configuration to create an IAM role.

* Role Name: Replace "my-iam-role" with your desired IAM role name.

* Role Permissions: The IAM role allows EC2 instances to assume it, granting access to specific S3 actions.

* IAM Policy: An IAM policy named "my-iam-policy" is defined and attached to the role. This policy specifies the permitted S3 actions and resource ARNs.

* Modify S3 Bucket ARN: Replace "s3-bucket-name" in the policy configuration with the ARN of the S3 bucket created in Phase 1.

* Apply Configuration: Execute the Terraform commands to create the IAM role and policy attachment.

* IAM Role Ready: The IAM role is now ready for association with EC2 instances in the subsequent phase.


# Phase 3: Launching EC2 Instances
Task: Launch EC2 instances in the default VPC.

* Create IAM Instance Profile: Utilize the provided Terraform configuration to create an IAM instance profile. This profile associates the previously created IAM role "my-iam-role" with EC2 instances.

* Instance Profile Name: Replace "your-instance-profile-name" with your chosen instance profile name or leave as default

* AMI Selection: Specify the AMI ID ("your-ami-id") of the Amazon Machine Image (AMI) you want to use for your EC2 instance.

* Instance Type: Set the instance type ("your-instance-type") based on your requirements.

* Key Pair: Replace "your-key-pair-name" with the actual name of your key pair. This is used for SSH access.

* IAM Instance Profile: Assign the IAM instance profile (aws_iam_instance_profile.example_instance_profile.name) created earlier to the EC2 instance.

* Tags: Customize the instance tags, including the instance name ("your-instance-name") for easy identification.

* Apply Configuration: Execute the Terraform commands to launch your EC2 instance in the default Amazon Virtual Private Cloud (VPC).

* Instance Ready: Your EC2 instance is now launched and configured with the necessary IAM role for accessing the S3 bucket.

# Phase 4: Upload Objects to S3 bucket
* Upload two objects of your choice to the s3 bucket
* (Optional: Upload your current resume to the s3 bucket)

# Phase 5: EC2 and S3 Interaction
Task: Write a Python script to demonstrate EC2 instances accessing the S3 bucket.

* Verify Resource Creation: Ensure that all the necessary AWS resources, including the S3 bucket, IAM role, IAM instance profile, and EC2 instance, have been successfully created using the provided Terraform configurations.
* SSH into your instance 
* install Boto3 and Pip
```
sudo yum install python3-pip -y
``````
``````
pip3 install boto3
```````
* Create a python file named ``main.py`` and paste the content from the provided Main.py code
* Edit only line 6 of main.py to replace "your-bucket-name" with your actual bucket name 
* Run python script by executing the following command 
```
python3 main.py
```
* The objects in your s3 bucket should be printed on your EC2 terminal. 

# Phase 6: Presigned URL 
* Create a Python file named presigned-url.py and paste the content from the provided presigned-url.py code.
* Edit only line 9 of presigned-url.py to replace "your-object-key" with your actual object key of your uploaded object (Use resume key if uploaded).
* Run the Python script by executing the following command
``````
python3 presigned-url.py
``````
* The presigned URLs for the objects in your S3 bucket should be printed on your EC2 instance's terminal
* Send me the presigned URL on Slack so I can download the object.  
