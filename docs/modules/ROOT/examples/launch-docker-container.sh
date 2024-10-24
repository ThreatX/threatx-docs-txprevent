docker run -i -p 80:80 -p 50051:50051 \
  --network host \
  --cap-add=NET_ADMIN \
  --mount type=bind,source=./AmazonRootCA1.pem,target=/AmazonRootCA1.pem \  # <.>
  -e SENSOR_TAGS=raap-example.raap-example-deployment \  # <.>
  -e INTERFACE=<see table below> \  # <.>
  -e RUST_LOG=info \
  -e RUST_BACKTRACE=1 \
  -e ANALYZER_URL=https://tx-analyzer.xplat-sandbox.threatx.io:50051 \
  -e ANALYZER_TLS_ENABLED=true \
  -e ANALYZER_TLS_CA_PEM=./AmazonRootCA1.pem \
  -e TARGET_ENVIRONMENT=docker \
  -v /sys/kernel/tracing:/sys/kernel/tracing:ro \
  public.ecr.aws/threatx/raap/threatx-runtime-sensor:1.1.0