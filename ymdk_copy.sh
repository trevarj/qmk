#!/bin/sh
# Script to load qmk file onto YMKD ID75 keyboard
# Run with super user privileges

FIRMWARE=$(find . -name '*.uf2' | fzf)

while [ -z "$MOUNT_POINT" ]; do
  echo "Waiting for keyboard..."
  sleep 3
  MOUNT_POINT=$(find /run/media -type d -name 'MT.KEY')
done

echo "Copying firmware..."
cp "$FIRMWARE" "$MOUNT_POINT"
sync
echo "Done."
