# Steps to Set up
```
git clone https://github.com/jabelk/yang-explorer-vagrant.git
vagrant up
vagrant ssh

source virtualenv_yang/bin/activate
cd $HOME/yang-explorer
rm -rf server/data/

# Put the `data` directory in files/, into your ntc-data shared folder to copy into the drive
cp -R /ntc-data/data server/data
sh setup.sh
sh start.sh
```
## open chrome on http://192.168.56.200:8088/static/YangExplorer.html and login the top right as Guest / Guest to see the models


### This set up includes pre-installed yang modules for IETF rfc and openconfig, except the following which would not compile:
- ietf-ip@2014-06-16.yang
- ietf-ipv4-unicast-routing@2016-11-04.yang
- ietf-ipv6-router-advertisements@2016-11-04.yang
- openconfig-fib-types
- openconfig-telemetry
- openconfig-aft-types
