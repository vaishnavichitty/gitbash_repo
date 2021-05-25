provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5HTFWR2F4UWLTAU6"
  secret_key = "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"
}


resource "aws_instance" "sri" {
ami = "ami-015451c8bbe8e7650"
instance_type = "t2.micro"
vpc_security_group_ids = ["sg-051ea4b5e323fb59d"]
subnet_id = "subnet-03016b1b347231d0f"

key_name =  "win2019r2"
associate_public_ip_address = true
tags = {
  Name = "sri"
  Environment = "development"
}
}