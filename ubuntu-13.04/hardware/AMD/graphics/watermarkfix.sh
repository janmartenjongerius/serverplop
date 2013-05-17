#bin/bash

# Exit the script when a command returns a non true value.
set -e
# Prevent using unset variables.
set -u

if [[ $EUID -ne 0 ]]; then
  echo "$0 must be run as root"
  exit 1
fi

DRIVER=/usr/lib/fglrx/xorg/modules/drivers/fglrx_drv.so
for x in $(objdump -d $DRIVER|awk '/call/&&/EnableLogo/{print "\\x"$2"\\x"$3"\\x"$4"\\x"$5"\\x"$6}'); do
sed -i "s/$x/\x90\x90\x90\x90\x90/g" $DRIVER
done
