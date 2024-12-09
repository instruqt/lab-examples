resource "layout" "single_column" {
  column "instructions" {}
}

resource "layout" "split_screen" {
  column "sandbox" {
    width = 67

    row "code" {
      height = 67
    }
    row "terminal" {
      height = 33
    }
  }

  column "instructions" {
    width = 33
  }
}
