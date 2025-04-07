FROM ghcr.io/mattblackonly/spotspot:latest

# # Erstelle das Verzeichnis für Musik
# RUN mkdir /media/download

# # Setze das Volume für das Musikverzeichnis
# VOLUME /media/download

# # Ändere das Arbeitsverzeichnis auf /music
# WORKDIR /media/download

# # Standard-ENTRYPOINT, um den Webserver zu starten
# ENTRYPOINT ["poetry", "run", "spotdl", "web", "--host", "0.0.0.0", "--web-use-output-dir", "--keep-alive","--allowed-origins", "*"]