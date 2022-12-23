resource "helm_release" "kubernetes-dashboard" {
  name = "kubernetes-dashboard"
  repository = "https://kubernetes.github.io/dashboard/"
  chart      = "kubernetes-dashboard"
  namespace  = "default"
  set {
    name  = "settings.clusterName"
    value = var.cluster_name
  }
  set {
    name  = "settings.resourceAutoRefreshTimeInterval"
    value = 15
  }
  set {
    name  = "settings.logsAutoRefreshTimeInterval"
    value = 15
  }
  set {
    name  = "settings.itemsPerPage"
    value = 10
  }
  set {
    name  = "service.type"
    value = "ClusterIP"
  }
  set {
    name  = "protocolHttp"
    value = "true"
  }
  set {
    name  = "service.externalPort"
    value = 80
  }
  set {
    name  = "replicaCount"
    value = 2
  }
  set {
    name  = "rbac.clusterReadOnlyRole"
    value = "true"
  }
  set {
    name  = "metricsScraper.enabled"
    value = true
  }
}

