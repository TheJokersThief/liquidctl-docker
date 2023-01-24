#! /bin/bash

echo "Initializing"
liquidctl initialize all

echo "Setting pump speed ${PUMPSPEED}"
liquidctl --match Kraken set pump speed $PUMPSPEED

echo "Setting fan speed to ${FANSPEED}"
liquidctl --match Corsair set fans speed $FANSPEED

if [ ! -z "$COLORSPEC" ]; then
   liquidctl $COLORSPEC
fi

sleep 20
while true; do
        liquidctl status
        sleep 60
done
