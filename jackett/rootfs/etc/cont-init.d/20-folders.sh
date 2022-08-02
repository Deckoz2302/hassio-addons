#!/bin/bash

if [ ! -d /share/downloads ]; then
    echo "Creating /share/downloads"
    mkdir -p /share/downloads
    chown -R abc:abc /share/downloads
fi

if [ -d /config/jackett ] && [ ! -d /config/addons_config/jackett ]; then
    echo "Moving to new location /config/addons_config/jackett"
    mkdir -p /config/addons_config/jackett
    chown -R abc:abc /config/addons_config/jackett
    mv /config/Jackett/* /config/addons_config/jackett/
    rm -r /config/Jackett
    rm -r /config/jackett
fi

if [ ! -d /config/addons_config/jackett ]; then
    echo "Creating /config/addons_config/jackett"
    mkdir -p /config/addons_config/jackett
    chown -R abc:abc /config/addons_config/jackett
fi
