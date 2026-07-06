resource "lab" "vm_task_service_test" {
  title       = "VM Task + Service Test"
  description = "Throwaway scratch lab to verify that task conditions and service tabs can target a vm resource directly, and that exec output can flow into page variables — the pattern the coder-agents-ai-governance V1 track migration depends on."

  settings {
    idle {
      enabled = false
    }
  }

  layout = resource.layout.two_column

  content {
    chapter "introduction" {
      title = "Introduction"

      page "first" {
        title     = "First"
        reference = resource.page.first
      }
    }
  }
}
