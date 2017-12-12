#!/bin/bash -e
#Start Supervisor
exec /usr/bin/supervisord -c /etc/supervisord.conf
