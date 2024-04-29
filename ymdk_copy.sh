#!/bin/sh
# Script to load qmk file onto YMKD ID75 keyboard
# Run with super user privileges

MOUNT_POINT=/media/MT.KEY

while [ ! -d $MOUNT_POINT ]; do
  echo "Waiting for keyboard..."
  sleep 5
done

echo "Copying firmware..."
cp ./ymdk_id75_layout_ortho_5x15_mine.uf2 $MOUNT_POINT
sync
echo "Done."
