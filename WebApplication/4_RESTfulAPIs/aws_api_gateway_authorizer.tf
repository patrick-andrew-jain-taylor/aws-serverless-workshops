resource "aws_api_gateway_authorizer" "this" {
  name = "WildRydes"
  rest_api_id = aws_api_gateway_rest_api.this.id
  type = "COGNITO_USER_POOLS"
  provider_arns = var.provider_arns
}
