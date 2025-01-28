policy "s3-block-public-access-account-level" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-S3-Terraform/1.0.3/policy/s3-block-public-access-account-level.sentinel?checksum=sha256:c9d0c9d650c862aa2c6568296123a8f7e0d1fa8b8938545783f960f5c62f9c60"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ingress-traffic-restriction-port-22" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-EC2-Terraform/1.0.3/policy/ec2-security-group-ingress-traffic-restriction-port-22.sentinel?checksum=sha256:e0bfa5c659e3a57a536a51d0c81c254dbe8ba90d54767ed62870c0cc9fcdd607"
  enforcement_level = "hard-mandatory"
}

policy "ec2-ebs-encryption-enabled" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-EC2-Terraform/1.0.3/policy/ec2-ebs-encryption-enabled.sentinel?checksum=sha256:5358b0a7737f510a965988e8f2d26928deaed176df5476b38676d5d17e59bc90"
  enforcement_level = "soft-mandatory"
}

policy "ec2-metadata-imdsv2-required" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-EC2-Terraform/1.0.3/policy/ec2-metadata-imdsv2-required.sentinel?checksum=sha256:f71b8850541d73418c155981ce9d347a3cf12b6ed2d54fac97a69fe4ffd0689e"
  enforcement_level = "soft-mandatory"
}
module "tfplan-functions" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-S3-Terraform/1.0.3/policy-module/tfplan-functions.sentinel?checksum=sha256:419b8c886cdf551893af60defba396632804f40e8c4f442e6505ac58c9edc5a1"
}

module "tfconfig-functions" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-S3-Terraform/1.0.3/policy-module/tfconfig-functions.sentinel?checksum=sha256:16acfc83fd6f4fa7a1fd067e84c35b4959a82ec92108d86df0b749ace96d8f02"
}

module "report" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-S3-Terraform/1.0.3/policy-module/report.sentinel?checksum=sha256:e8422be2bf132524ef264934609cbfbf4846e77936003448a69747330fcfe9ba"
}

module "tfresources" {
  source = "https://registry.terraform.io/v2/policies/hashicorp/CIS-Policy-Set-for-AWS-S3-Terraform/1.0.3/policy-module/tfresources.sentinel?checksum=sha256:54edaac2a209f55d117f92291baae78d400fd47d94336e614f2cadf6b38bea99"
}
