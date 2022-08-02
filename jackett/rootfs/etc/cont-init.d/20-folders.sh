#!/bin/bash

if [ ! -d /share/jackett ]; then
    echo "Creating /share/jackett"
    mkdir /share/jackett
    chown -R jackett:jackett /share/jackett
fi

if [ -d /config/jackett ] && [ ! -d /config/addons_config/jackett ]; then
    echo "Moving to new location /config/addons_config/jackett"
    mkdir /config/addons_config/jackett
    chown -R jackett:jackett /config/addons_config/jackett
    mv /config/Jackett/* /config/addons_config/jackett/
    rm -r /config/Jackett
    rm -r /config/jackett
fi

if [ ! -d /config/addons_config/jackett ]; then
    echo "Creating /config/addons_config/jackett"
    mkdir /config/addons_config/jackett
    chown -R jackett:jackett /config/addons_config/jackett
fi
