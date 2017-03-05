# bypass
It uses iptables to redirect packets input from a interface to local port.

## Usage

* Fetch the code
```
git clone git@github.com:LaoLuMian/bypass-rpi.git
```

* Modify config by adding vps in `02-vps`
```
cd bypass
vim white/02-vps
```

* Run bypass
```
sudo mkdir -p /dorry_data/bypass
sudo cp white/* /dorry_data/bypass/
docker run -itd --privileged --restart=always --cap-add=NET_ADMIN --net=host -v /dorry_data/bypass:/bypass -e LAN=eth1 -e PORT=1080 --name router_bypass dorrypizza/bypass-rpi:0.2.0
```

* clean rule
```
docker exec -it router_bypass ./clean-rule eth1
```

* clean ipset
```
docker exec -it router_bypass ./clean-ipset
```
