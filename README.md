# Build

docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag aranajuan/autossh:latest .

# RUN

docker run -it --rm -v **YOUR ID_RSA**:/root/id_rsa -e REMOTE_HOST=**PROXY IP** -e REMOTE_USER=**PROXY USER** -e TUNNEL_ARGS="-R 443:192.168.0.2:443 -R 80:192.168.0.2:80" aranajuan/autossh