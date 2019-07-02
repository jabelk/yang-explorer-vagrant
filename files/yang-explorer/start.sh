#!/usr/bin/env bash

HOST='192.168.56.200'
PORT='8088'

# set timeout value for ncclient
export NCCLIENT_TIMEOUT=90

if [ ! -f "server/data/db.sqlite3" ]; then
    echo "Yang-Explorer database is not initialized .. please run setup.sh first !!"
    exit -1
fi

echo ""

if [ -f "v/bin/activate" ]; then
	echo "Activating virtualenv .."
	source v/bin/activate
fi

command -v pyang >/dev/null 2>&1 || {
    echo "pyang not found.. please install pyang before continuing !!" >&2;
    exit -1;
}

echo "Starting YangExplorer server .."
echo "Use http://$HOST:$PORT/static/YangExplorer.html"
echo ""

cd server
python manage.py runserver $HOST:$PORT
