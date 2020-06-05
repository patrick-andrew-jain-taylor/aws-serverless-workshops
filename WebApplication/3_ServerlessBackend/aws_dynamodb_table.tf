resource "aws_dynamodb_table" "this" {
  name = "Rides"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "RideId"

  attribute {
    name = "RideId"
    type = "S"
  }
}
