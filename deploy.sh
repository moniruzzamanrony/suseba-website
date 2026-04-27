#!/bin/bash

SERVER="root@209.97.161.90"
REMOTE_DIR="/var/www/html"
LOCAL_DIR="/home/rony29/Temp/Suseba/suseba-website"

echo "Connecting to server and clearing $REMOTE_DIR..."
sshpass -p 'SuSeba@00#SuSeba' ssh -o StrictHostKeyChecking=no "$SERVER" "rm -rf ${REMOTE_DIR}/* && rm -rf ${REMOTE_DIR}/.[!.]* 2>/dev/null; echo 'Remote directory cleared.'"

echo "Uploading files to $REMOTE_DIR..."
sshpass -p 'SuSeba@00#SuSeba' scp -o StrictHostKeyChecking=no -r \
  "$LOCAL_DIR"/* "$SERVER:$REMOTE_DIR/"

echo "Deployment complete!"
