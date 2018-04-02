#!/bin/bash

USERNAME="USER_OF_NODES"

echo
echo 'Starting Project Deployment'
echo '============================='
echo 
echo 'Please make sure you have SSH access to all nodes on corda network or this script will fail!'
echo
echo "Are you sure you want to deploy apps in 'app' folder to all nodes? (y/n)? \c"
read answer
if [ $answer == 'y' ]
then
	ssh-add
	cat nodes | while read node
	do
		echo '\nDeploying CordApp on '$node'\n'
		scp ./apps/*.jar $USERNAME@$node:/opt/corda/plugins/
		echo '\nRestarting Corda node and Corda-Webserver\n'
 		ssh -n $USERNAME@$node 'sudo systemctl restart corda; sudo systemctl restart corda-webserver'
 		echo 'Application(s) deployed successfully on Node: '$node
 		echo '-----------------------------------------------------------------------------\n\n'
	done
else
	echo 'Program will exit now!'
fi