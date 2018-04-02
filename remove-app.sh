#!/bin/bash

USERNAME="USER_OF_NODES"

echo
echo 'Uninstall Corda App'
echo '==================================='
echo 
echo 'Please make sure you have SSH access to all nodes on corda network or this script will fail!'
echo
echo "Please enter the name of the app you want to Uninstall: \c"
read app_name
echo "Are you sure you want to Uninstall app? (y/n)? \c"
read answer
if [ $answer == 'y' ]
then
	ssh-add
	cat nodes | while read node
	do
		echo '\nUninstalling CordApp on '$node'\n'
		ssh -n $USERNAME@$node 'rm '/opt/corda/plugins/$app_name'.jar'
		echo '\nRestarting Corda node and Corda-Webserver\n'
 		ssh -n $USERNAME@$node 'sudo systemctl restart corda; sudo systemctl restart corda-webserver'
 		echo 'Application uninstalled successfully on Node: '$node
 		echo '-----------------------------------------------------------------------------\n\n'
	done
else
	echo 'Program will exit now!'
fi