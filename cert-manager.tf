resource "null_resource" "apply_crds" {
  provisioner "local-exec" {
    command = "kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/latest/download/cert-manager.crds.yaml"
  }
}

resource "helm_release" "cert_manager" {
  name       = "cert-manager"
  namespace  = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  version    = "v1.14.4"

  create_namespace = true

  depends_on = [
    null_resource.apply_crds
  ]
}
