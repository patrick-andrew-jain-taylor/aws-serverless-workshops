resource "aws_iam_role_policy_attachment" "lambda" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "dynamodb" {
  policy_arn = aws_iam_policy.this.arn
  role = aws_iam_role.this.name
}
