data "archive_file" "this" {
  type = "zip"
  source_file = "${path.module}/requestUnicorn.js"
  output_path = "${path.module}/requestUnicorn.zip"
}

resource "aws_lambda_function" "this" {
  function_name = "RequestUnicorn"
  handler = "exports.handler"
  role = aws_iam_role.this.arn
  runtime = "nodejs10.x"
  filename = data.archive_file.this.output_path
  source_code_hash = filebase64sha256(data.archive_file.this.output_path)
}
