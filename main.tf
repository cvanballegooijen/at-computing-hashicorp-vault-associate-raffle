resource "random_integer" "user_id" {
  min = 1
  max = 100
  keepers = {
    test_value = timestamp()
  }
}

output "winner" {
   description = "And the winner is "
   value       = random_integer.user_id.result
}
