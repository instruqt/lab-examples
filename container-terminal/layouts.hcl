resource "layout" "two_column" {
  column {
    tab "terminal" {
      target = resource.terminal.shell
    }
    width = "33"
    instructions {
    }
  }

  column {
    width = 33
    instructions {}
  }
}
