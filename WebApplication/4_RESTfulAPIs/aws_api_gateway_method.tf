resource "aws_api_gateway_method" "post" {
  authorization = "COGNITO_USER_POOLS"
  http_method = "POST"
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  authorizer_id = aws_api_gateway_authorizer.this.id
}

resource "aws_api_gateway_method" "options" {
  authorization = "NONE"
  http_method = "OPTIONS"
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
}

