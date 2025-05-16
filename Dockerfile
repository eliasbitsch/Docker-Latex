# Verwende Ubuntu 22.04 als Basisimage
FROM ubuntu:22.04

# Setze Umgebungsvariablen für nicht-interaktive Installation
ENV DEBIAN_FRONTEND=noninteractive

# Installiere grundlegende LaTeX-Pakete und benötigte Tools
RUN apt-get update && apt-get install -y \
    texlive \
    texlive-latex-extra \
    texlive-lang-german \
    texlive-bibtex-extra \
    latexmk \
    biber \
    python3 \
    python3-pygments \
    perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Setze Arbeitsverzeichnis
WORKDIR /workspace

# Standard-Eingangspunkt
CMD ["/bin/bash"]
