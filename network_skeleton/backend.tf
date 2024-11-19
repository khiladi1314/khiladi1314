


terraform {
  backend "s3" {
    bucket = "my-buck-p8"
    key    = "network-skeleton-Module/terraform.tfstate"
    region = "us-east-2"
    //dynamodb_table = "my_tool_dynamo"
  }
}
