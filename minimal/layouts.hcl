resource "layout" "minimal" {
  column {
    tab "terminal" {
      target = resource.terminal.shell
    }
  }

  column {
    instructions {}
  }
}

resource "layout" "instructions_only" {
  column {
    instructions {}
  }
}