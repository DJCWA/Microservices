output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = aws_lb.app.dns_name
}

output "ecr_repositories" {
  description = "ECR repository URLs"
  value = {
    posts   = aws_ecr_repository.posts.repository_url
    threads = aws_ecr_repository.threads.repository_url
    users   = aws_ecr_repository.users.repository_url
  }
}
