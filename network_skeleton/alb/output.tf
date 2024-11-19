output "alb_arn" {
  description = "ARN of the Application Load Balancer"
  value       = aws_lb.my_alb.arn
}
