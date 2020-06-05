resource "aws_api_gateway_integration" "this" {
  http_method = aws_api_gateway_method.this.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  integration_http_method = "POST"
  type = "AWS_PROXY"
  uri = var.invoke_arn
}
