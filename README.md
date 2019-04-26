## About
Terraform module to create internet gateway.

## Usage

```
module "igw" {
  source  = "github.com/jetbrains-infra/terraform-aws-igw"
  vpc_id  = "${local.vpc_id}" // required
  project = "DB" // required
}
```

## Outputs

* `route_table_id` - route table id 
