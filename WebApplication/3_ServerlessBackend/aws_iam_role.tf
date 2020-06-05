data "aws_iam_policy_document" "role" {
  version = "2012-10-17"
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["lambda.amazonaws.com"]
      type = "Service"
    }
    effect = "Allow"
  }
}

data "aws_iam_policy_document" "policy" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = ["dynamodb:PutItem"]
    resources = [aws_dynamodb_table.this.arn]
  }
}

resource "aws_iam_role" "this" {
  name = "WildRydesLambda"
  assume_role_policy = data.aws_iam_policy_document.role.json
}

resource "aws_iam_policy" "this" {
  name = "DynamoDBWriteAccess"
  policy = data.aws_iam_policy_document.policy.json
}

resource "aws_iam_role_policy_attachment" "lambda" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "dynamodb" {
  policy_arn = aws_iam_policy.this.arn
  role = aws_iam_role.this.name
}
