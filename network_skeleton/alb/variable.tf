variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = any
}

variable "internal" {
  description = "Whether the ALB is internal or external"
  type        = any
}

variable "security_groups" {
  description = "List of security group IDs for the ALB"
  type        = any
}

variable "subnets" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}
