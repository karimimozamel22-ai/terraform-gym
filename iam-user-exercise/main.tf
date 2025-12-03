provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "student" {
  name = "tf-student-user"
}

resource "aws_iam_access_key" "student_key" {
  user = aws_iam_user.student.name
}
resource "aws_iam_user_policy_attachment" "readonly" {
  user       = aws_iam_user.student.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
