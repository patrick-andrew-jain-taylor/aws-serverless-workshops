resource "aws_api_gateway_rest_api" "this" {
  name = "WildRydes"
  endpoint_configuration {
    types = ["EDGE"]
  }
}
