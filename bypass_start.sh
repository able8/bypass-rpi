sudo mkdir -p /dorry_data/bypass_conf
sudo cp `pwd`/white/* /dorry_data/bypass_conf/
docker run -itd --privileged --restart=always --cap-add=NET_ADMIN --net=host -v /dorry_data/bypass_conf:/bypass -e LAN=eth1 -e PORT=1080 --name router_bypass dorrypizza/bypass-rpi:0.3.0
