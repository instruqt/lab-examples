resource "task" "test" {
  description = "path traversal"
  condition "condition" {
    description = "path traversal"
    setup {
      script = "../../setup.sh"
    }
  }
}
