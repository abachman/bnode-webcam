#!/bin/sh

OLDFILE=`md5sum /home/bnode/webcam-backup/$(ls /home/bnode/webcam-backup | tail -n1) | cut -d ' ' -f1`

NEWFILE=`md5sum /home/bnode/baltimorenode.org/public/images/webcam.jpg | cut -d ' ' -f1`

if [ "$OLDFILE" == "$NEWFILE" ]; then
  echo "Still the same"
else
  echo "NEW!"
  cp /home/bnode/baltimorenode.org/public/images/webcam.jpg /home/bnode/webcam-backup/webcam-$(date +%Y%m%d%H%M%S).jpg
fi

