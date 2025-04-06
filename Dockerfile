# Verwende das Python-basierte Home Assistant Addon-Base
FROM ghcr.io/hassio-addons/addon-base-python:latest

# Installiere SpotDL und andere Abhängigkeiten
RUN pip install spotdl

# Kopiere das Skript, das den Download startet
COPY run.sh /usr/local/bin/run.sh

# Arbeitsverzeichnis setzen
WORKDIR /usr/local/bin

# Starte das Skript
CMD ["/bin/bash", "run.sh"]
