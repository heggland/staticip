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

### Raspberry pi 5
- Raspberry pi 5. Dhcpcd package is missing from the latest raspberry pi os (64bit). Install it before running ./install.
It gets 2 IP addresses?? ![image](https://github.com/heggland/staticip/assets/26274036/dc586404-0367-4047-8e64-3fad31db7ffd)


#### Works on  (need to be tested with new rpi os)
[✅] - rpi4b

[✅] - rpi0w

[✅] - rpi02w 

## Prerequisites
- dhcpcd package, install with `sudo apt install dhcpcd`

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



