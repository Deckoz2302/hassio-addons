#!/bin/bash

if [ ! -d /share/sonarr ]; then
    echo "Creating /share/sonarr"
    mkdir /share/sonarr
    chown -R abc:abc /share/sonarr
fi

if [ ! -d /share/sonarr/downloads ]; then
    echo "Creating /share/sonarr/downloads"
    mkdir /share/sonarr/downloads
    chown -R abc:abc /share/sonarr/downloads
fi

if [ -d /config/sonarr ] && [ ! -d /config/addons_config/sonarr ]; then
    echo "Moving to new location /config/addons_config/sonarr"
    mkdir /config/addons_config/sonarr
    chown -R abc:abc /config/addons_config/sonarr
    mv /config/sonarr/* /config/addons_config/sonarr/
    rm -r /config/sonarr
fi

if [ ! -d /config/addons_config/sonarr ]; then
    echo "Creating /config/addons_config/sonarr"
    mkdir /config/addons_config/sonarr
    chown -R abc:abc /config/addons_config/sonarr
fi
