#!/bin/bash

if [ ! -d /config/addons_config/overseerr ]; then
    echo "Creating /config/addons_config/overseerr"
    mkdir /config/addons_config/overseerr
fi

if [ ! -d /config/.cache/yarn ]; then
    echo "Creating /config/.cache/yarn"
    mkdir /config/.cache/yarn
fi

chown -R overseerr:overseerr /config/addons_config/overseerr
chown -R overseerr:overseerr /config/.cache/yarn
