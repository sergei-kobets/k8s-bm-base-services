resource "helm_release" "rancher" {
  name             = "rancher"
  repository       = "https://releases.rancher.com/server-charts/latest"
  chart            = "rancher"
  namespace        = "cattle-system"
  create_namespace = true
  version          = "2.11.2"

  set {
    name  = "replicas"
    value = 1
  }

  set {
    name  = "hostname"
    value = "rancher.kobets.online"
  }

  set {
    name  = "bootstrapPassword"
    value = "7NfiSXTXXE6HhiY1Ihaf"
  }

  depends_on = [
    helm_release.cert_manager
]
}
