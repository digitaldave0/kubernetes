minikube start \
    --kubernetes-version=v1.18.3 \
    --addons="dashboard" \
    --addons="metrics-server" \
    --addons="ingress" \
    --addons="ingress-dns" \
    --feature-gates=EphemeralContainers=true
