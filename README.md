## About
Terraform module to create internet gateway.

## Usage

```hcl
module "internet_gateway" {
  source  = "github.com/jetbrains-infra/terraform-aws-igw"
  vpc_id  = module.vpc.id // required
  tags    = {
    Owner    = "Don John",
    Project  = "Alice",
    Customer = "Umbrella Corp."
  }
}
```

## Outputs

* `route_table_id` - route table id 
