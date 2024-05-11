terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "=3.30.0"
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
}

# Creating the local varialble for the bucket, queue, retention time.
locals {
  message_wait_time_seconds = 15
  message_rentention_seconds = 172800
  message_delay = 60
  max_size = 8192
  bucket_name = "upload-bucket"
  queue_name = "upload-queue" 
}

# Adding S3 bucket details for 
resource "aws_s3_bucket" "bucket" {
  bucket = "upload-bucket"
  acl = "private" 

} 

resource "aws_sqs_queue" "queue" {
  name = "upload-queue"
  delay_seconds = 60
  max_message_size = 8192
  message_retention_seconds = 172800
  receive_wait_time_seconds = 15

} 

# Creating IAM Policy 
data "aws_iam_policy_document" "iam_notif_policy_doc"{
 statement {
   sid = "1"
   effect = "Allow"
   actions = ["sqs:SendMessage"]
   resources = [aws_sqs_queue.queue.arn]
   condition {
    test = "ArnEquals"
    variable = "aws:SourceArn"
    values = [aws_s3_bucket.bucket.arn]
   }
   principals {
    type = "AWS"
    identifiers = ["*"]
   }
 }
}

# Creating SQS Queue Policy 
resource "aws_sqs_queue_policy" "notif_policy"{
  queue_url = aws_sqs_queue.queue.id
  policy = data.aws_iam_policy_document.iam_notif_policy_doc.json
}




# Creating S3 Bucket notification 
resource "aws_s3_bucket_notification" "bucket_notif"{
  bucket = aws_s3_bucket.bucket.id
  
  queue {
    queue_arn = aws_sqs_queue.queue.arn
    events = ["s3:ObjectCreated.*"]
    filter_prefix = ""
    filter_suffix = ""
  }
}
