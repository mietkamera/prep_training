#!/bin/bash

# Prepares a linux system for neuronal network training
#

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
    error "This script must be run as root" 
    exit 1
fi

# change to script directory
cd "$(dirname "$(readlink -f "$0")")"

if [ -z $(which python) ]; then
   apt-get -y update &>/dev/null
   apt-get install python3 -y &>/dev/null
   apt-get install python3-venv -y &>/dev/null
   apt-get install python3-pip -y &>/dev/null
fi

for ENV in env2 env3; do
	ENV_DIR="/usr/local/bin/${ENV}"
	mkdir -p ${ENV_DIR}
	python3 -m venv --system-site-packages ${ENV_DIR} >/dev/null 2>&1
	source ${ENV_DIR}/bin/activate >/dev/null 2>&1
	pip install --upgrade pip >/dev/null 2>&1
	deactivate >/dev/null 2>&1
	echo -n "install venv ${ENV_DIR} ..."
	${ENV_DIR}/bin/python -m pip install -r requirements/${ENV}.txt >/dev/null 2>&1
	if [ "$?" != "0" ]; then
	  echo "error"
	  exit
	elif
	  echo "ok"
	fi
done
