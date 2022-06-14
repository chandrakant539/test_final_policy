# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAVVVNOHC7YD4YLMC2"
  secret_key = "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"
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
  block_public_acls   = false

}
