# Resource block to generate random password
resource "random_password" "password" {
  length  = 16
  special = true
}

# Output block to display generated password
output "generated_password" {
  value       = random_password.password.result
  description = "the generated random password"
  sensitive   = true
}
