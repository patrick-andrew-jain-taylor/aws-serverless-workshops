resource "aws_dynamodb_table" "this" {
  name = "Rides"
  hash_key = "RideId"

  attribute {
    name = "RideId"
    type = "S"
  }
}
