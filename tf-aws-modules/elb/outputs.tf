# -----------------------------------------------------------------------------
# Outputs
# -----------------------------------------------------------------------------

output "elb_id" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.elastic_loadbalancer.*.id, list("")), 0)}"
}

output "elb_arn" {
  description = "The ARN of the ELB"
  value       = "${element(concat(aws_elb.elastic_loadbalancer.*.arn, list("")), 0)}"
}

output "elb_name" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.elastic_loadbalancer.*.name, list("")), 0)}"
}

output "elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = "${element(concat(aws_elb.elastic_loadbalancer.*.dns_name, list("")), 0)}"
}

output "elb_instances" {
  description = "The list of instances in the ELB"
  value       = ["${flatten(aws_elb.elastic_loadbalancer.*.instances)}"]
}

output "elb_source_security_group_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances"
  value       = "${element(concat(aws_elb.elastic_loadbalancer.*.source_security_group_id, list("")), 0)}"
}

output "elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = "${element(concat(aws_elb.elastic_loadbalancer.*.zone_id, list("")), 0)}"
}