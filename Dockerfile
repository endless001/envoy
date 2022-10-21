FROM envoyproxy/envoy-dev:latest

COPY ./envoy-demo.yaml /etc/envoy-demo.yaml
RUN chmod go+r /etc/envoy-demo.yaml
CMD ["/usr/local/bin/envoy", "-c", "/etc/envoy-demo.yaml", "--service-cluster", "proxy"]