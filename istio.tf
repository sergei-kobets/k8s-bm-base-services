resource "helm_release" "istio" {
  name             = "istio"
  repository       = "https://istio-release.storage.googleapis.com/charts"
  chart            = "base"
  namespace        = "istio-system"
  create_namespace = true
  version          = "1.26.1"

  set {
    name  = "replicas"
    value = 1
  }

  set {
    name  = "defaultRevision"
    value = "default"
  }
}
