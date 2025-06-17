variable "bootstrapPassword" {
  description = "Rancher bootstrap pass"
  type        = string
  sensitive   = true
}

variable "hostname" {
  description = "Rancher hostname"
  type        = string
}
