resource "aws_s3_bucket" "my-static-s3-website-us-east-1a-id002" {
  bucket = "www.${var.bucket_name}"
}
data "aws_s3_bucket" "aws_s3_bucket" {
  bucket = aws_s3_bucket.my-static-s3-website-us-east-1a-id002.bucket
}