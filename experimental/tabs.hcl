resource "virtual_browser" "virtual" {
  url = "https://www.instruqt.com"

  network {
    id = resource.network.main.meta.id
  }
}