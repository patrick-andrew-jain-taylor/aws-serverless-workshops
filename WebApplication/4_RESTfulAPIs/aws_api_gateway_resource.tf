resource "aws_api_gateway_resource" "this" {
  parent_id = aws_api_gateway_rest_api.this.id
  path_part = "ride"
  rest_api_id = aws_api_gateway_rest_api.this.root_resource_id
}
