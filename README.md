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

* Start bypass
```
./bypass-control start eth1
```

* Stop bypass
```
./bypass-control stop eth1
```

* Restart bypass
```
./bypass-control restart eth1
```


* clean rule
```
docker exec -it router_bypass ./clean-rule eth1
```

* clean ipset
```
docker exec -it router_bypass ./clean-ipset
```
