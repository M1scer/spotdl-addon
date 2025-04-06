FROM spotdl/spotify-downloader:latest

# Kopiere das run.sh-Skript
COPY run.sh /

# Berechtigung für run.sh setzen
RUN chmod a+x /run.sh

# Startbefehl für das Skript
ENTRYPOINT [ "/run.sh" ]