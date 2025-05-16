resource "layout" "single_column" {
  column "instructions" {}
}

resource "layout" "two_column" {
  column "terminal" {}

  column "instructions" {
    width = 33
  }
}
