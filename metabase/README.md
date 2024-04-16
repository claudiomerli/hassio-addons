## Configure the repository

See config instructions here: https://github.dev/claudiomerli/hassio-addons

## Versioning

This addon follow the same Metabase's version releases, except for the last number which identifies this addon version.
Example:
`0.49.5.1` -> `0.49.5` is Metabase version and `1` is this addon version

## Configure the add-on

1. Install PostgresDB (TimescaleDB): https://community.home-assistant.io/t/home-assistant-add-on-postgresql-timescaledb/198176.
2. Add the "metabase" db in the Configuration tab.
3. Start TimescaleDB addon.
4. Install this addon.
5. Configure settings in the "Configuration" tab to match Timescale host.
6. Start Metabase addon.
7. Wait until it's started
8. Go to http://homeassistant.local:7778
9. Walkthrough the Metabase setup.
