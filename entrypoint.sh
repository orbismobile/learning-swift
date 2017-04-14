#!/bin/sh
set -e

TMP_UID=1234
TMP_USER="swifter"

sed -i -e "s/:$TMP_UID:$TMP_UID:/:$DEV_UID:$DEV_GID:/" /etc/passwd
sed -i -e "s/$TMP_USER:x:$TMP_UID:/$TMP_USER:x:$DEV_GID:/" /etc/group

cd $ENV_APP && gosu $DEV_UID:$DEV_GID $*
