#!/bin/bash

echo "change4"

update(){  
if [ -z "$2" ]
then
      echo "\$2 is NULL"
else     
echo $1    
val=$(sed -n "/$1/{n;p;}" config.ini | awk '{print $2}')
echo $val
sed -i "s~${val}~${2}~g" config.ini
echo $2
fi
}

if [ -z "$DISPLAY_ID"];then
DISPLAY_ID="default"
echo $DISPLAY_ID
fi

Mac=$(ifconfig -a | grep -Po 'HWaddr \K.*$'  | awk '{print $0}')
update URL $URL
update serverKey $KEY
update ID $Mac
update INTERVAL $INTERVAL
update DISPLAY $DISPLAY_ID

./iniwriter
# ./app/_build/bin/player