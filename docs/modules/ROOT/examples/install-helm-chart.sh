helm upgrade --namespace threatx --create-namespace --install --debug \
    --set analyzer.apiKey=<SENSOR_KEY> \ # <.>
    --set analyzer.customer=<TENANT> \ # <.>
    --set analyzer.tags=<CLUSTER_TAGS> \ # <.>
    --set certManager.enabled=true \  # <.>
threatx-prevent oci://public.ecr.aws/threatx/helm/threatx-prevent
