# staticip

Set static ip for raspberry pi

1. Check if DHCPCD is activated
sudo service dhcpcd status

* if not active, run these commands:
- sudo service dhcpcd start
- sudo systemctl enable dhcpcd

2. run install

Info:
- This bash program has also an uninstall script, on installation the program takes an backup of dhcpcd.conf before
writing to it.
- The program write a temp file where it stores the information before writing it to dhcpcd.conf. If error occurs the most likely problem is the lack of privilieges, will then ask you to re-run the program with sudo ./install. When re-run it will check if the temp file is present and will just excecute the write to dhcpcd.conf.



<br>
<br>
<br>
	<a href="https://www.buymeacoffee.com/heggland" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Cup Of 		Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px 		rgba(190, 190, 190, 0.5) !important;" ></a>
