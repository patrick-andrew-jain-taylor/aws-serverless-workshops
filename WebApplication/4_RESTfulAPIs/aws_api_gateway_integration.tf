resource "aws_api_gateway_integration" "post" {
  http_method = aws_api_gateway_method.post.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  integration_http_method = "POST"
  type = "AWS_PROXY"
  uri = var.invoke_arn
}

resource "aws_api_gateway_integration" "options" {
  http_method = aws_api_gateway_method.options.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  type = "MOCK"
}
