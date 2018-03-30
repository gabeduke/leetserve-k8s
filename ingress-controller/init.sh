helm upgrade --install \
  --set controller.hostNetwork=true \
  --set controller.nodeSelector."kubernetes\.io/hostname"=mothership \
  --set controller.service.type=NodePort \
  --set controller.stats.enabled=true \
  --set rbac.create=true \
  nginx stable/nginx-ingress
