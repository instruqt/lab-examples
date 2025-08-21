resource "layout" "minimal" {
  column {
    tab "terminal" {
      target = resource.editor.workstation
    }
    width = "53"
    tab "instructions" {
      target = resource.editor.workstation
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