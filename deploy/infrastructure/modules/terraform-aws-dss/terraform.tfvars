# This file is an example, please adapt it to your configuration.
# See TFVARS.md for the full set of variables and related descriptions.

# AWS account
aws_region = "us-east-2"

# DNS Management
aws_route53_zone_id  = ""

# Hostnames
app_hostname         = "dss.calanalytics.com"
crdb_hostname_suffix = "crdb.dss.calanalytics.com"

# Kubernetes configuration
cluster_name                 = "dss-dev"
node_count                   = 3
aws_instance_type            = "t3.medium"
aws_kubernetes_storage_class = "gp2"

# DSS configuration
image = "latest"
authorization = {
  jwks = {
  endpoint = "https://oauth-utm.odot.calanalytics.com/.well-known/jwks.json"
  key_id = "f4f3f0ca-384a-4e17-97dc-3c85095d5016"
  }
}
should_init         = true
crdb_locality       = "cal_dss"
crdb_external_nodes = []
