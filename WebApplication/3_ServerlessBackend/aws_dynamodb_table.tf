resource "aws_dynamodb_table" "this" {
  name = "Rides"
  hash_key = "RideId"

  attribute {
    name = "hash_key"
    type = "S"
  }
}
