# Steps to Set up

git clone
vagrant up
vagrant ssh

source virtualenv_yang/bin/activate
cd $HOME/yang-explorer
rm -rf server/data/
cp -R /ntc-data/data server/data
sh setup.sh
sh start.sh

open chrome on http://192.168.56.200:8088/static/YangExplorer.html
