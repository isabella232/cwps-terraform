# -----------------------------------------------------------------------------
# Required Terraform Version
# -----------------------------------------------------------------------------

terraform {
  required_version = ">= 0.11.7"
}

# -----------------------------------------------------------------------------
# Resources
# -----------------------------------------------------------------------------

resource "aws_iam_role_policy_attachment" "attachment" {
  role       = "${var.role}"
  policy_arn = "${var.policy_arn}"
}
