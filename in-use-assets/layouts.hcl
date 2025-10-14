resource "layout" "simple" {
  column {
    instructions {
      title = "Instructions"
    }

    tab "note" {
      title  = "Note"
      target = resource.note.image
    }
  }
}

resource "layout" "layout_1" {
}
