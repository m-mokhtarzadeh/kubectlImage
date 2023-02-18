FROM alpine:3.17.2
RUN apk update && \
apk add curl && \
curl -L -O "https://dl.k8s.io/release/v1.23.15/bin/linux/amd64/kubectl" && \
mv kubectl /bin/ && \
chmod +x /bin/kubectl
