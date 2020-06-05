data "aws_iam_policy_document" "policy" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = ["dynamodb:PutItem"]
    resources = [aws_dynamodb_table.this.arn]
  }
}

resource "aws_iam_policy" "this" {
  name = "DynamoDBWriteAccess"
  policy = data.aws_iam_policy_document.policy.json
}
