# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  
 
  
}

resource "aws_s3_bucket" "s3bucketchandra" {
  bucket = "s3bucketchandra"
  tags = {
    Name        = "s3bucketchandra"
    Environment = "Trial"
  }
}
resource "aws_s3_bucket_public_access_block" "s3bucketchandra" {
  bucket = aws_s3_bucket.s3bucketchandra.id
  block_public_acls   = true

}
