resource "aws_lambda_function" "this" {
  function_name = "RequestUnicorn"
  handler = "exports.handler"
  role = aws_iam_role.this.arn
  runtime = "nodejs10.x"
  filename = "${path.module}/requestUnicorn.js"
  source_code_hash = filebase64sha256("${path.module}/requestUnicorn.js")
}
