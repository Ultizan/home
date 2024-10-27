resource "proxmox_vm_qemu" "vm" {
  name        = var.vm_name
  clone       = var.vm_template
  cores       = var.vm_cpu
  memory      = var.vm_memory
  disk {
    size = var.vm_disk_size
  }
  network {
    id     = var.network_id
    model  = "virtio"
    bridge = "vmbr0"
  }
}
