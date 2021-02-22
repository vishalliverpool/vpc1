#resource "aws_s3_bucket" "terraform_state" {
#  bucket = "terraform-up-and-running-state-4"
  # Enable versioning so we can see the full revision history of our
  # state files
 # versioning {
 #   enabled = true
  }
  # Enable server-side encryption by default
  #server_side_encryption_configuration {
   # rule {
    #  apply_server_side_encryption_by_default {
    #    sse_algorithm = "AES256"
     # }
    #}
  #}
#}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state-4"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
    # Replace this with your DynamoDB table name!
    #dynamodb_table = "terraform-up-and-running-locks"
    #encrypt        = true
  }
}
