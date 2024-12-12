resource "page" "first" {
  file = "instructions/introduction/first.md"
}

resource "page" "second" {
  file = "instructions/introduction/second.md"
}

output "pages" {
  value = {
    "first" = resource.page.first
    "second" = resource.page.second
  }
}