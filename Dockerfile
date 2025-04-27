# Verwende Ubuntu 22.04 als Basisimage
FROM ubuntu:22.04

# Setze Umgebungsvariablen für nicht-interaktive Installation
ENV DEBIAN_FRONTEND=noninteractive

# Installiere nur die notwendigen Pakete für eine leichtgewichtige LaTeX-Umgebung
RUN apt-get update && apt-get install -y \
    texlive \
    texlive-latex-extra \
    latexmk \
    perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Installiere zusätzliche Pakete für die Verwendung von BibLaTeX
RUN apt-get update && apt-get install -y \
    texlive-lang-german \
    texlive-bibtex-extra

RUN apt-get update && apt-get install -y \
    biber

# Setze Arbeitsverzeichnis
WORKDIR /workspace

# Standard-Eingangspunkt
CMD ["/bin/bash"]