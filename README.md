# SpotDL Add-on für Home Assistant

## Beschreibung
Das SpotDL Add-on für Home Assistant ermöglicht das einfache Herunterladen von Musik von Spotify. Es nutzt das [SpotDL-Python-Paket](https://github.com/spotDL/spotdl), um Musik im MP3-Format von Spotify zu extrahieren und auf deinem System zu speichern. Der Webserver ermöglicht es dir, Links zu Spotify-Songs einzugeben und die Musik direkt herunterzuladen.

## Funktionen
- **Musik von Spotify herunterladen**: Mit SpotDL kannst du Musiktitel von Spotify herunterladen und auf deinem Gerät speichern.
- **Webserver für Downloads**: Der Webserver läuft im Hintergrund und ermöglicht es dir, Spotify-Song-URLs einzugeben, um Musik direkt herunterzuladen.
- **Einfache Integration in Home Assistant**: Das Add-on läuft als Docker-Container und ist vollständig in Home Assistant integriert.
- **Automatisierungen und Skripte**: Du kannst SpotDL über Home Assistant Automatisierungen und Skripte steuern.

## Voraussetzungen
- Home Assistant in einer Version, die Docker-basierte Add-ons unterstützt (z. B. Home Assistant OS oder Home Assistant Supervised).
- Internetverbindung für den Zugriff auf Spotify und das Herunterladen von Musik.

## Installation

### 1. Füge das Repository zu Home Assistant hinzu
1. Gehe zu `Supervisor` → `Add-ons` → `Repositories`.
2. Füge die URL des Repositories hinzu: `https://github.com/M1scer/spotdl-addon`.

### 2. Installiere das SpotDL Add-on
1. Gehe zu `Supervisor` → `Add-ons` → `Add-on Store`.
2. Suche nach "SpotDL" und klicke auf "Installieren".

### 3. Starte das SpotDL Add-on
1. Nach der Installation kannst du das Add-on starten, indem du auf "Starten" klickst.
2. Das Add-on wird automatisch im Hintergrund laufen und bereit sein, Spotify-Tracks herunterzuladen.

## Nutzung des Webservers
Das SpotDL Add-on stellt einen Webserver zur Verfügung, über den du Songs von Spotify herunterladen kannst.

### Zugriff auf den Webserver:
- **Port**: 8080 (Standardmäßig wird der Webserver auf Port 8080 laufen).
- **URL**: `http://[DEIN-HOME-ASSISTANT-IP]:8080`

### Schritte zum Herunterladen eines Songs:
1. Öffne einen Webbrowser und gehe zu `http://[DEIN-HOME-ASSISTANT-IP]:8080`.
2. Gib den Link des Spotify-Songs in das Eingabefeld ein.
3. Klicke auf "Download", um den Song herunterzuladen.

Beispiel für einen Spotify-Link:  
`https://open.spotify.com/track/XXXXXXXXXXXXXXXXX`

Der Song wird als MP3-Datei auf deinem Gerät gespeichert.

## Konfiguration
Das SpotDL Add-on benötigt keine benutzerdefinierte Konfiguration. Es läuft einfach im Hintergrund, um Musik herunterzuladen und über den Webserver verfügbar zu machen.

### Beispielskript für Home Assistant:
Du kannst auch ein Skript erstellen, das einen bestimmten Song herunterlädt. Beispiel:

```yaml
alias: 'Lade einen Song von Spotify herunter'
sequence:
  - service: shell_command.download_spotify_song
    data:
      song_url: "https://open.spotify.com/track/XXXXXXXXXXXXXXXXX"
