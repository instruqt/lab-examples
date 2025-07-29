resource "page" "first" {
  title = "First"
  file = "instructions/introduction/first.md"
}

resource "page" "second" {
  title = "Second"
  file = "instructions/introduction/second.md"
}

output "pages" {
  value = {
    "first" = resource.page.first
    "second" = resource.page.second
  }
}