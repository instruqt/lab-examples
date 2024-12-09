resource "layout" "single_column" {
  column "instructions" {}
}

resource "layout" "split_screen" {
  column "sandbox" {
    width = 67

    row "code" {}
    row "terminal" {
      height = 33
    }
  }

  column "instructions" {}
}
