resource "layout" "single_column" {
  column {
    instructions {}
  }
}

resource "layout" "two_column" {
  column {
    tab "terminal" {
      title = "Terminal"
      target = resource.terminal.shell
    }
  }

  column {
    width = 33
    instructions {}
  }
}
