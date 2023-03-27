locals {
  name   = "ex-${replace(basename(path.cwd), "_", "-")}"
  region = "us-east-2"
  azs                      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-vpc"
    GithubOrg  = "terraform-aws-modules"
  }
  eks = {
    cluster_name = "kw-cluster"
    cluster_version = "1.24"
  }
}