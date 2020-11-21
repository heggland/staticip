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
#echo "You typed ${NETWORK}"

checkNet "$NETWORK"
}


function checkHos {
VAL="^[0-9]+([.][0-9]+)?$"

if [[ $1 =~ $VAL ]]; then
  echo number
  router
else
  echo not a number
  host
fi

}

function host {
echo "Type host path (two last parts, example 1.10) :"
read HOST
#echo "You typed ${HOST}"
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



function write {
while true; do
    read -p "Do you want to set ${NETWORK}.${HOST} as static IP?" yn
    case $yn in
        [Yy]* )install;  break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

}



function install {
echo "Your static IP will be: ${NETWORK}.${HOST}"
echo -e " \n interface wlan0 \n static ip_address=${NETWORK}.${HOST}/24 \n static routers=${NETWORK}.${ROUTER} \n static domain_name_servers=${NETWORK}.${ROUTER} \n \n \n interface eth0 \n static ip_address=${NETWORK}.${HOST}/24 \n static routers=${NETWORK}.${ROUTER} \n static domain_name_servers=${NETWORK}.${ROUTER}" > /bin/setIP/installing
}

network
