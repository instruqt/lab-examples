resource "lab" "edb_pgd_multi_site_banking_demo" {
  title       = "EDB Postgres Distributed: Multi-Site, Zero-Downtime, In Action"
  description = "Live demo of EDB Postgres Distributed running a multi-site banking workload — zero-downtime maintenance, rolling upgrades, and elastic node operations across an Always On Gold topology (4 data + 1 witness)."

  settings {
    idle {
      enabled = false
    }
  }

  layout = resource.layout.single_column

  content {
    chapter "__default" {
      title = "Default"
      page "poc" {
        title     = "Proof of Concept"
        reference = resource.page.poc
      }
    }
  }
}
