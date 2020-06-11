# Do You Even Transit Gateway?

Here's an example of trying to build the [Isolated VPCs with shared services](https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-isolated-shared.html)
Transit Gateway example, and seeing that it's impossible.

Run the initial VPC/Transit Gateway setup:

```bash
terraform init
terraform plan -out tfout
terraform apply tfout
```

Then uncomment the code in [OPTION1.tf](OPTION1.tf) or [OPTION2.tf](OPTION2.tf) and run the same
commands again to witness the errors:

```bash
terraform plan -out tfout
terraform apply tfout
```

Be sure to `plan/apply` with both options commented out before switching options so that you're
starting from a clean state each time.


Running:

```bash
terraform destroy
```

Will clean everything up.
