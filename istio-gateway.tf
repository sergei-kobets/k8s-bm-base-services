resource "helm_release" "istio-gateway" {
  name             = "gateway"
  repository       = "https://istio-release.storage.googleapis.com/charts"
  chart            = "gateway"
  namespace        = "istio-ingress"
  create_namespace = true
  version          = "1.26.1"

  depends_on = [
  helm_release.istio,
  helm_release.istiod,
  helm_release.metallb
  ]
}
