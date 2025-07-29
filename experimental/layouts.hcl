resource "layout" "two_column" {
  column {
    width = 67
    tab "virtual" {
      target = resource.virtual_browser.virtual
    }
  }

  column {
    width = 33
    instructions {}
  }
}
