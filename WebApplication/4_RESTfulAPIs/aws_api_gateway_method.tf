resource "aws_api_gateway_method" "this" {
  authorization = "NONE"
  http_method = "POST"
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
}
