#!/bin/bash

#---------------------------------------------------------------------------------------------------------------------------
# FUNCTIONS
#---------------------------------------------------------------------------------------------------------------------------
function _info() { printf "\\r[ \\033[00;34mINFO\\033[0m ] %s\\n" "$@"; }

#---------------------------------------------------------------------------------------------------------------------------
# HOMEASSISTANT Add-On OVERRIDES
#---------------------------------------------------------------------------------------------------------------------------

function _hass {
  _info "Welcome to the Home Assistant Add-on: Metabase by Claudio Merli."
  _info "Explore your Home Assistant data at ease."
  _info "Home Assistant Add-on release: 0.51.4.4"
  CONFIG_PATH=/data/options.json
  export MB_DB_DBNAME=$(jq --raw-output '.MB_DB_DBNAME' $CONFIG_PATH)
  export MB_DB_USER=$(jq --raw-output '.MB_DB_USER' $CONFIG_PATH)
  export MB_DB_PASS=$(jq --raw-output '.MB_DB_PASS' $CONFIG_PATH)
  export MB_DB_HOST=$(jq --raw-output '.MB_DB_HOST' $CONFIG_PATH)
  export MB_DB_PORT=$(jq --raw-output '.MB_DB_PORT' $CONFIG_PATH)
}

#---------------------------------------------------------------------------------------------------------------------------
# MAIN
#---------------------------------------------------------------------------------------------------------------------------

_hass

java -jar  ./home/metabase.jar
