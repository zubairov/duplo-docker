FROM alpine

# Install openvpn
RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add bash curl ip6tables iptables openvpn \
                shadow tini && \
    addgroup -S vpn && \
    rm -rf /tmp/*

HEALTHCHECK --interval=60s --timeout=15s --start-period=120s \
             CMD curl -L 'https://in.elastic.io'

COPY client.ovpn .
COPY run.sh .

ENTRYPOINT ["/sbin/tini", "--", "/run.sh"]
