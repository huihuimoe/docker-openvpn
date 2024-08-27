FROM docker.io/library/alpine:3.20

RUN set -ex; \
  apk add --no-cache \
    ca-certificates-bundle openvpn tini \
    iptables nftables bash easy-rsa  \
  && mkdir -p /etc/openvpn/ \
  && ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin

COPY entrypoint.sh /
WORKDIR /etc/openvpn

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["openvpn", "--config", "config.ovpn"]
