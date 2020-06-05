resource "aws_cognito_user_pool_client" "this" {
  name = "WildRydesWebApp"
  user_pool_id = aws_cognito_user_pool.this.id
  generate_secret = false
}
