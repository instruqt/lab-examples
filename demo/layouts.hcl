resource "layout" "single_column" {
  column {
    instructions {}
  }
}

resource "layout" "split_screen" {
  column {
    width = 67

    row {
      height = 67
      tab "code" {
        target = resource.editor.workstation
      }
    }
    row {
      height = 33
      tab "shell" {
        target = resource.terminal.workstation
      }
    }
  }

  column {
    width = 33
    instructions {}
  }
}

resource "layout" "instruction_only" {
  column {
    instructions {}
  }
}

resource "layout" "full_code" {
  column {
    tab "lab" {
      active = true
      target = resource.editor.workstation
    }
    
    instructions {}
  }
}
