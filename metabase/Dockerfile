FROM --platform=$BUILDPLATFORM openjdk:19-buster AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG HA_RELEASE
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM" > /log
RUN echo "build - Working on the following addon release: $HA_RELEASE"
COPY config.yaml /home/ha_addon_version.yaml
ADD https://downloads.metabase.com/v0.51.4.4/metabase.jar /home
COPY run.sh /
RUN chmod a+x /run.sh

FROM openjdk:19-buster
ARG HA_RELEASE
RUN echo "final - Working on the following addon release: $HA_RELEASE"
RUN apt-get update \
    && apt-get install -y jq
COPY --from=build /home /home
COPY --from=build /run.sh /run.sh
ENV MB_DB_TYPE=postgres
EXPOSE 3000
CMD [ "/run.sh" ]

# Labels
LABEL \
    io.hass.name="Metabase" \
    io.hass.description="Home Assistant Add-on: Metabase" \
    io.hass.arch="aarch64|amd64" \
    io.hass.type="addon" \
    io.hass.version=${HA_RELEASE} \
    maintainer="Claudio Merli <cladlomerli99@gmail.com>" \
    org.opencontainers.image.title="Metabase" \
    org.opencontainers.image.description="Home Assistant Add-on: Metabase" \
    org.opencontainers.image.vendor="Claudio Merli's add-on repository" \
    org.opencontainers.image.authors="Claudio Merli <cladlomerli99@gmail.com>" \
    org.opencontainers.image.licenses="GNU Affero General Public License (AGPL)" \
    org.opencontainers.image.url="https://github.com/claudiomerli/hassio-addons" \
    org.opencontainers.image.source="https://github.com/claudiomerli/hassio-addons" \
    org.opencontainers.image.documentation="https://raw.githubusercontent.com/claudiomerli/hassio-addons/master/README.md" \
    org.opencontainers.image.version=${HA_RELEASE}
