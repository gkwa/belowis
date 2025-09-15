terraform {
  required_providers {
    incus = {
      source  = "lxc/incus"
      version = "0.5.1"
    }
  }
}

provider "incus" {
  # Configure the Incus provider
  # Specify the Incus remote URL if needed
  # remote = "https://example.com:8443"
}

resource "incus_instance" "my_instance" {
  name      = "my-instance"
  image     = "images:ubuntu/jammy"
  ephemeral = false

  config = {
    "boot.autostart" = true
  }

  device {
    name = "root"
    type = "disk"

    properties = {
      path = "/"
      pool = "default"
    }
  }

  # Optionally, you can add additional configuration, devices, or files
  # For example, to attach a volume:
  # device {
  #   name = "data"
  #   type = "disk"
  #   properties = {
  #     path   = "/mnt/data"
  #     source = incus_storage_volume.data.name
  #     pool   = incus_storage_pool.pool.name
  #   }
  # }
}
