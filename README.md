# Set static IP for raspberry pi

Simple program that writes
```
interface wlan0
static ip_address= 
static routers= 
static domain_name_servers= 

interface eth0
static ip_address= 
static routers= 
static domain_name_servers= 
```
to dhcpcd.conf file.

## Install
1. Run the install script with this command 
- `./install`

If dhcpcd error occurs.. it might not be running. 
Use these commands to start and enable dhcpcd service.
- `sudo service dhcpcd start`
- `sudo systemctl enable dhcpcd`

Check if service is running.
- `sudo service dhcpcd status`

## Uninstall
- Manual uninstall.
The uninstall script open up the dhcpcd file with sudo privileges. 

\\\

	<a href="https://www.buymeacoffee.com/heggland" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Cup Of 		Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px 		rgba(190, 190, 190, 0.5) !important;" ></a>
