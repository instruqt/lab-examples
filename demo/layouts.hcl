resource "layout" "instruction_only" {
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

resource "layout" "full_code" {
  column {
    tab "lab" {
      target = resource.editor.workstation
      active = true
    }
    instructions {}
  }
}
