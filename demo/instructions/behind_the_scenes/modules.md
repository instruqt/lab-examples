# Reusable and Shareable Modules

## Sandbox building blocks

Defining a reusable module.

```hcl
variable "network_id" {
  default = ""
}

variable "host_port" {
  default = 8200
}

output "root_token" {
  value = resource.random_password.root_token.value
}

output "vault_address" {
  value = "http://${resource.container.vault.container_name}:8200"
}
```

```hcl
resource "random_password" "root_token" {
  length = 32
}

resource "container" "vault" {
  network {
    id = variable.network_id
  }

  image {
    name = "vault:1.13.3"
  }

  environment = {
    VAULT_ADDR = "http://localhost:8200"
    VAULT_DEV_ROOT_TOKEN_ID = resource.random_password.root_token.value
  }

  port {
    local  = 8200
    remote = 8200
    host   = variable.host_port
  }
}
```

Consuming modules.

```
// Create a Vault server from a module
module "vault_server" {
  source = "instruqt/vault_server"

  variables = {
    network_id = resource.network.main.id
    host_port = 8200
  }
}

module "vault_server_2" {
  source = "instruqt/vault_server"

  variables = {
    network_id = resource.network.main.id
    host_port = 18200
  }
}

```
