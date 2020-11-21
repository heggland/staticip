# staticip

Set static ip for raspberry pi


1. Check if DHCPCD is activated
sudo service dhcpcd status

* if not active, run these commands:
- sudo service dhcpcd start
- sudo systemctl enable dhcpcd

2. run install
