FROM hypriot/rpi-alpine-scratch 

RUN apk update && \
    apk upgrade && \
    apk add --update bash curl iptables ipset && \
    rm -rf /var/cache/apk/*

RUN mkdir /bypass
ADD init ./
ADD clean-rule ./
ADD clean-ipset ./

ENTRYPOINT ./init
