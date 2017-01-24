FROM hypriot/rpi-alpine-scratch 

RUN apk update && \
    apk upgrade && \
    apk add --update bash curl iptables ipset && \
    rm -rf /var/cache/apk/*

ADD init ./
ADD clean-rule ./

ENTRYPOINT ./init
