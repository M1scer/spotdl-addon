FROM spotdl/spotify-downloader:latest

# Kopiere das run.sh-Skript in das Container-Verzeichnis
COPY run.sh /run.sh

# Berechtigung für run.sh setzen
RUN chmod +x /run.sh

# Startbefehl für das Skript
ENTRYPOINT ["/bin/bash", "/run.sh"]
