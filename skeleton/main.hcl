resource "lab" "main" {
  title = "Skeleton Lab"
  description = <<-EOF
  This is the Skeleton Lab.
  You can use this as a minimal starting point for developing labs.
  EOF

  layout = resource.layout.single_panel
}