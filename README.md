# Set static IP for raspberry pi

### Raspberry pi os bookworm [currently not supported with install script]
- Dhcpcd package is missing from the latest raspberry pi os (64bit). They now use nmcli to handle static ip.
- manually set the ip with nmcli. Documentation: https://www.raspberrypi.com/documentation/computers/configuration.html#assign-a-static-ip-address


## raspberry pi os bullseye and before

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

## Prerequisites
- dhcpcd 

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



## Support

If you found this program useful and would like to show your appreciation, you can <a href="https://www.buymeacoffee.com/heggland" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Cup Of 		Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px 		rgba(190, 190, 190, 0.5) !important;" ></a>

Thank you for using this program! Feel free to reach out if you have any questions or need further assistance.



