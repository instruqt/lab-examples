# Layouts

- Flexible layouts to support different use-cases and content needs
- Switch between layouts during a lab
- Reuse tabs and layouts
- Persistent tabs that maintain their state

## Example

```hcl
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
```
