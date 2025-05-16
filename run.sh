#!/bin/bash
# Run-Skript zum Bauen des Docker-Images und Starten des Containers mit devcontainer.json-kompatiblen Einstellungen

# Setze Variablen
IMAGE_NAME="docker-latex-image"
CONTAINER_NAME="docker-latex-container"
HOST_PROJECT_DIR="$(pwd)/tex-project"

# Erstelle den tex-project Ordner, falls er nicht existiert
if [ ! -d "$HOST_PROJECT_DIR" ]; then
    echo "Erstelle tex-project Ordner: $HOST_PROJECT_DIR"
    mkdir -p "$HOST_PROJECT_DIR"
fi

# Baue das Docker-Image
echo "Baue Docker-Image: $IMAGE_NAME..."
docker build -t $IMAGE_NAME .

# Prüfe, ob der Build erfolgreich war
if [ $? -ne 0 ]; then
    echo "Fehler beim Bauen des Images. Abbruch."
    exit 1
fi

# Stoppe und entferne eventuell laufende Container mit demselben Namen
echo "Entferne alte Container, falls vorhanden..."
docker rm -f $CONTAINER_NAME 2>/dev/null

# Starte den Container mit Volume-Mounts aus devcontainer.json
echo "Starte Container: $CONTAINER_NAME..."
docker run -it \
    --name $CONTAINER_NAME \
    -v "$HOST_PROJECT_DIR:/workspace" \
    --user root \
    $IMAGE_NAME

# Prüfe, ob der Container erfolgreich gestartet wurde
if [ $? -ne 0 ]; then
    echo "Fehler beim Starten des Containers."
    exit 1
fi

echo "Container läuft. Verwende 'docker exec -it $CONTAINER_NAME /bin/bash' für Zugriff."