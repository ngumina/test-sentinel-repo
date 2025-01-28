(Beta) Pre-written Sentinel Policies for Center for Internet Security(CIS) AWS EC2 Foundations Benchmark
Pre-written Sentinel policies are ready to use compliance checks for CIS AWS Foundations Benchmarking v1.2, v1.4 and v3.0 to help enable your AWS resources meet industry security standards.

At HashiCorp, we’re committed to making policy management easier for our customers. We understand that developing policies from scratch can be time-consuming and resource-intensive. To address this, we’re introducing our Prewritten Policy Libraries—expertly crafted, ready-to-use policies designed to streamline your compliance processes and enhance security across your infrastructure.

This repository contains several policies designed to accelerate the adoption of the CIS AWS Foundations Benchmark within HCP Terraform. These policies can be utilized to enforce best practices and security standards across your AWS environment.

For more details on how to work with these policies and to understand the Sentinel language and framework, please refer to the Sentinel documentation or the README documentation included with each of the policy libraries.

Feedback
We aim to validate the effectiveness of our policies by collecting diverse user feedback and understanding real-world use cases. This input will help refine our policies and enhance their overall impact.

You can submit your feedback via a public beta survey.

If you have any issues or enhancement suggestions to the library, please create a new GitHub issue.

Alternatively, we welcome any contributions that improve the impact of this library! To learn more about contributing and suggesting changes to this library, refer to the contributing guide.

Policies Included
AWS EBS volume are encrypted (docs | code)
Ensure that EC2 Metadata Service only allows IMDSv2 (docs | code)
AWS EC2 Network Acls should not allow ingress traffic from 0.0.0.0/0 or ::/0 to ports 22 or 3389 (docs | code)
AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to port 22 (docs | code)
AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to port 3389 (docs | code)
AWS Security Group should not allow ingress traffic from 0.0.0.0/0 to port 22 and 3389 (docs | code)
AWS Security Group should not allow ingress traffic from ::/0 to port 22 and 3389 (docs | code)
EC2 VPC Default Security Group No Traffic (docs | code)
EC2 VPC Flow Logging Enabled (docs | code)
Getting Started
This getting started guide assumes that:

You are familiar with core workflows in HCP Terraform and Terraform Enterprise, and you have an existing workspace configured with AWS access credentials.

You have a user account that is part of the "owners" team or have "Manage Policies" organization-level permissions to create new policy sets and policies.

You are using HCP Terraform or Terraform Enterprise v202406-1 or a later version.

You are using Sentinel version 0.26.x and later version.

By default, all the policies within the library will be enforced by the HCP Platform with the enforcement_level set to advisory only.

Example:

policy "iam-password-expiry" {
  source = "./policies/iam-password-expiry.sentinel"
  enforcement_level = "advisory"
   params = {
      password_expiry_days = 90
   }
}
If you want to change the enforcement levels to either soft-mandatory or hard-mandatory, we recommend updating the contents of the sentinel.hcl file in each library before applying the Terraform configuration.

Important: The policies in each library are opinionated and depend on a Sentinel module documentation.

To learn more about how to configure a policy set as a policy evaluation, please review the Terraform Enterprise provider documentation.

Resources
Get Started - HCP Terraform
Connecting VCS Providers to HCP Terraform
Policy Enforcement
Managing Policy Sets
Introduction to Sentinel
Sentinel Documentation
Sentinel Language
Sentinel Language Specification
Policy Libraries
