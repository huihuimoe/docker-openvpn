# Simple OpenVPN OCI Image

A simple OpenVPN OCI image with built-in openvpn/bash/easyrsa/iptables/iproute2.

## Running

TLDR:

1. Prepare your ovpn config in `conf/config.ovpn`.
2. Start.

```bash
podman run -d -v ./conf:/etc/openvpn -p "1194:1194/udp" --cap-add NET_ADMIN --device /dev/net/tun --restart unless-stopped ghcr.io/huihuimoe/openvpn
```

If you prefer to use podman-compose/docker-compose, refer to [docker-compose.yml](./docker-compose.yml).

## License

MIT
