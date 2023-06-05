data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "var" {
  type = string
  description = "test1"
}