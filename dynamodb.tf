module "dynamodb_table" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name     = local.name
  hash_key = "id"

  attributes = [
    {
      name = "id"
      type = "N"
    }
  ]

  tags = local.tags
}
