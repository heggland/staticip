#!/bin/bash

function checkNet {
VAL="^[0-9]+([.][0-9]+)?$"
if [[ $1 =~ $VAL ]]; then
  echo number
  host
else
  echo not a number
  network
fi
}

function network {
echo  "Type network path (two first parts, example 192.168) : "
read NETWORK
checkNet "$NETWORK"
}

function checkHos {
VAL="^[0-9]+([.][0-9]+)?$"

if [[ $1 =~ $VAL ]]; then
  router
else
  echo not a number
  host
fi
}

function host {
echo "Type host path (two last parts, example 1.10) :"
read HOST
checkHos "$HOST"
}

function checkRou {
VAL="^[0-9]+([.][0-9]+)?$"
if [[ $1 =~ $VAL ]]; then
  echo number
  write
else
  echo not a number
  router
fi
}

function router {
echo "Please type in network path to your router (two last parts, example 1.1) :"
read ROUTER
checkRou "$ROUTER"
}

function install {
{
while true; do
    read -p "Do you want to set a interface?" yn
    case $yn in
        [Yy]* ) chooseInterface;  break;;
        [Nn]* ) echo -e " \ninterface wlan0 \nstatic ip_address=${NETWORK}.${HOST}/24 \nstatic routers=${NETWORK}.${ROUTER} \nstatic domain_name_servers=${NETWORK}.${ROUTER} \n\n\ninterface eth0 \nstatic ip_address=${NETWORK}.${HOST}/24 \nstatic routers=${NETWORK}.${ROUTER} \nstatic domain_name_servers=${NETWORK}.${ROUTER}" > installing; echo "Your static IP will be: ${NETWORK}.${HOST}"; break;;
        * ) echo "Please answer yes or no.";;
    esac
done

cat "installing" >> "/etc/dhcpcd.conf"
tput setaf 2; echo "Success"; echo "..Please reboot the system before changes take effect"
} || {
tput setaf 1; echo "Write failed, permission errors?/n Please use sudo command, sudo ./install"
}

}

function chooseInterface {
while true; do
    echo "\n1. wlan0"
    echo "2. eth0\n"
    read -p "Choose an option: " option
    case $option in
        [1]* ) echo -e " \ninterface wlan0 \nstatic ip_address=${NETWORK}.${HOST}/24 \nstatic routers=${NETWORK}.${ROUTER} \nstatic domain_name_servers=${NETWORK}.${ROUTER}" > installing; break;;
        [2]* ) echo -e " \ninterface eth0 \nstatic ip_address=${NETWORK}.${HOST}/24 \nstatic routers=${NETWORK}.${ROUTER} \nstatic domain_name_servers=${NETWORK}.${ROUTER}" > installing; break;;
        * ) echo "Please enter 1 or 2.";;
    esac
done

if [[ $option == 1 ]]; then
  echo "Your static IP on the wireless interface will be: ${NETWORK}.${HOST}"
else
echo "Your static IP on the wired interface will be: ${NETsWORK}.${HOST}"
fi


}


function start {
  network
}

start

