

terraform {
  backend "s3" {
    bucket = "team-p8-snatak"
    key    = "Network-skeleton-Module/terraform.tfstate"
    region = "us-east-2"
    //dynamodb_table = "my_tool_dynamo"
  }
}
