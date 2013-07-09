#!/bin/bash

. include/bootstrap-root

DRIVER=/usr/lib/fglrx/xorg/modules/drivers/fglrx_drv.so

log "Fixing AMD fglrx graphics driver"

for x in $(objdump -d $DRIVER|awk '/call/&&/EnableLogo/{print "\\x"$2"\\x"$3"\\x"$4"\\x"$5"\\x"$6}'); do
  sed -i "s/$x/\x90\x90\x90\x90\x90/g" $DRIVER
done

loginfo "Logout or restart your desktop manager for the changes to take effect."
