FROM alpine:3.17.2
ENV KUBE_VERSION=1.23.15
RUN apk update && \
apk add curl && \
curl -L -O curl -LO "https://dl.k8s.io/release/${KUBE_VERSION}/bin/linux/amd64/kubectl" && \
mv kubectl /bin/ && \
chmod +x /bin/kubectl
