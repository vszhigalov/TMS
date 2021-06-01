#!/bin/bash
if [ -v $TheFile ];
then
	export File=/tmp/data.file
else
	export File=$TheFile
fi
echo "\$File=$File"
echo "\$TheFile=$TheFile"
exit
