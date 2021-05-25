#!/bin/sh
ssh-keyscan -H "${REMOTE_HOST}" >>~/.ssh/known_hosts

echo -e $TUNNEL_ARGS | xargs sh -c 'autossh -M 0 -i /root/id_rsa -o ServerAliveInterval=60 -o ServerAliveCountMax=10 -N -T "${@}" "${REMOTE_USER}"@"${REMOTE_HOST}"' _

echo "Running"