# Corda Deployment and Configuration Helper Scripts
Base helper scripts and guides to ease corda deployment, development and node configrations with **Corda**

Tested on **Corda V2**



### All these scripts and guides were tested on a live **Corda network deployed on Azure**.

You can deploye your on Corda network on Azure in minutes from [here.](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/corda.r3corda?tab=Overview)



### All this scripts/guides have been created for and under supervision of:

[<img src="https://upload.wikimedia.org/wikipedia/fi/thumb/9/95/Tieto_logo.svg/1200px-Tieto_logo.svg.png" width="150" height="50">](https://www.tieto.com)



## Files

1. **nodes**	 -		Contains IP addreses of all your Corda nodes.
2. **deploy-apps.sh**		- 	Can deploy one or more CordApps to corda nodes listed in nodes file.
3. **remove-app.sh**		-		Can remove a cordApp from all nodes listed in nodes file.
4. **rename-node.txt**	-		Guides you about how to rename your Corda node.
5. **reset-node-data.txt**	-		Guides you about how to clear all data on your corda node.		


## deploy-apps.sh
This script will automatically takes all the **CordApps** in 'apps' folder and deploy them on your corda network. It asks for your ssh password to corda nodes before deployment.


## remove-app.sh
This script will ask you for the name of CordApp you want to remove from your corda network. You just need to mention the name of app without extension (.jar). For example: If you have deployed **'./apps/yo-app.jar'** on your corda network and you want to remove it. You will have to provide app name **'yo-app'** when asked while running the script.


## Usage

1.  Edit 'nodes' file and add all IPs of your corda network nodes

2.  Edit 'deploy-apps.sh' & 'remove-app.sh' and change line number 3 with your username of Corda network.

3.  Run the desired script
