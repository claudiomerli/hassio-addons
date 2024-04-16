## Configure the repository

See config instructions here: https://github.dev/claudiomerli/hassio-addons

## Configure the add-on

1. Install PostgresDB (TimescaleDB) by Expaso: https://community.home-assistant.io/t/home-assistant-add-on-postgresql-timescaledb/198176.
2. Add the "metabase" db as an exta database entry in the Configuration tab.
3. Start TimescaleDB addon to initialize.
4. Install this addon.
5. Configure settings in the "Configuration" tab if defaults are changed by you.
6. Start Metabase addon.
7. Go to http://yourhomeassistant:7778 (wait untill add-on is initialized) - Note: Ingress not working yet.
8. Walkthrough the Metabase setup.
12. _Optional:_ Add the Home Assistant PostgreSQL DB (You need to have the recorder configured: https://www.home-assistant.io/integrations/recorder/)
9. Explore!