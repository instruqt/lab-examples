resource "layout" "two_column" {
  column {
    tab "terminal" {
      target = resource.terminal.shell
    }
    width = "53%"
    tab "tab" {
      target = resource.editor.workstation
    }
    tab "instructions" {
      target = resource.editor.workstation
    }
  }

  column {
    width = 33
    instructions {}
  }
}
