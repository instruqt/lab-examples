resource "layout" "single_column" {
  column {
    width = "33"
    instructions {}
  }

  column {
    tab "workstation" {
      target = resource.terminal.workstation
      title  = "Workstation"
    }
  }
}
