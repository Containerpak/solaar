FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/solaar"

RUN apt-get update && \
    apt-get install -y --no-install-recommends solaar && \
    cpak-clean-junk

COPY solaar.desktop /usr/share/applications/solaar.desktop
COPY icon.png /usr/share/icons/hicolor/128x128/apps/solaar.png

