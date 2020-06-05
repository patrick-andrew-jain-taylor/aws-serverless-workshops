resource "aws_api_gateway_method_response" "options" {
  http_method = aws_api_gateway_method.options.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  status_code = "200"
  response_models = {
    "application/json" = "Empty"
  }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin" = true
   }
}

resource "aws_api_gateway_method_response" "post" {
  http_method = aws_api_gateway_method.post.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Origin" = true
  }
}
