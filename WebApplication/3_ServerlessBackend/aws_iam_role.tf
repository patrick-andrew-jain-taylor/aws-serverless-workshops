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

resource "aws_iam_role" "this" {
  name = "WildRydesLambda"
  assume_role_policy = data.aws_iam_policy_document.role.json
}
