resource "layout" "single_column" {
  column {
    tab "cli" {
      target = resource.terminal.cli
    }
    
    tab "vm" {
      target = resource.terminal.vm
    }
    
    instructions {}
  }
}