#!/bin/bash
USED=`df -h | grep hw_19 | awk '{print $5}' | sed '{s/.$//;}'`
MAX=0
TO="faravair@yandex.ru"
SBJ="Alarm - free space"

if [ $USED -gt $MAX ]
    then
        echo "Folder hw_19 using $USED%" | mail -s $SBJ $TO
        echo "Huston, we have a problem!"
    else
        echo "Good!"
fi

