resource "helm_release" "istiod" {
  name             = "istiod"
  repository       = "https://istio-release.storage.googleapis.com/charts"
  chart            = "istiod"
  namespace        = "istio-system"
  create_namespace = true
  version          = "1.26.1"

  set {
    name  = "telemetry.enabled"
    value = "true"
  }

  set {
    name = "meshConfig.ingressService"
    value = "istio-gateway"
  }

  set {
    name = "meshConfig.ingressSelector"
    value = "gateway"
  }

  depends_on = [helm_release.istio]

}
