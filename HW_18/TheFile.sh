#!/bin/bash
#if [ -v $(cat /etc/environment | grep TheFile)];
if [ -v $TheFile ];
then
	#export File=$TheFile
	export File=/tmp/data.file
else
	#export File=/tmp/data.file
	export File=$TheFile
fi
echo "\$File=$File"
echo "\$TheFile=$TheFile"
exit
