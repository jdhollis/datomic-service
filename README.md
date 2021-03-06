# datomic-service

## AWS

All Terraform and scripts assume you have the AWS CLI tools installed. On the Mac, you can install them via [Homebrew](https://brew.sh):

```bash
brew install awscli
```

### Credentials

All of the Terraform assumes that you have configured your AWS credentials the following way:

#### `~/.aws/credentials`

```ini
[ops]
aws_access_key_id = …
aws_secret_access_key = …
```

#### `~/.aws/config`

```ini
[profile ops]

[profile ops-dev]
source_profile = ops
role_arn = …

[profile ops-tools]
source_profile = ops
role_arn = …

[profile ops-stage]
source_profile = ops
role_arn = …

[profile ops-prod]
source_profile = ops
role_arn = …
```

You can configure using [`aws configure`](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) or edit the files directly.

## Initial Build

Before applying this Terraform, you need to install Datomic Cloud via the [AWS Marketplace](https://aws.amazon.com/marketplace/pp/prodview-otb76awcrb7aa) where you can configure and deploy a CloudFormation stack to stand up the Datomic environment.

You have to provide the stack names manually through variables—there's no way to derive them. The module also assumes the creation of a bastion instance and create an inbound route for the bastion security group as well as a VPC Endpoint Service.

```bash
terraform init
terraform plan -out plan
terraform apply plan
```
