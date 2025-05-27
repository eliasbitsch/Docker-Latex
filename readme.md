# LaTeX Devcontainer Setup

https://github.com/user-attachments/assets/7280f287-535d-4674-8b51-a1b0cdc3cc18

A basic LaTeX environment in Docker for **VS Code** or manual use.  
Supports **German** (`ngerman`) and **biblatex**.  
Auto-compiles LaTeX **on save** (Ctrl+S) using **James-Yu.latex-workshop**.

---

## Folder Structure

```
├── Dockerfile          # Docker build instructions
├── readme.md           # Project documentation
├── run.sh              # Script to run/build project
└── tex-project
    └── TWBooks_v2.24
        ├── *.pdf       # Output PDFs
        ├── *.tex       # LaTeX source file
        ├── Literatur.bib # Bibliography
        ├── PICs        # Images used in the document
        ├── build       # Build output folder
        └── twbook.cls  # LaTeX class file

```
---

## Requirements

- Docker installed
- VS Code + "Dev Containers" extension

---

## Setup
1.
```bash
git clone https://github.com/eliasbitsch/Docker-Latex.git
```
2.
```bash
cd Docker-Latex
```
3.
```bash
./run.sh
```
- This builds and starts the Docker container.
- In VS Code, Devcontainer starts automatically if you reopen in container.

---

### Edit and Compile

- Open `.tex` files inside `tex-project/TWBooks_v2.24/`.
- **Press Ctrl+S** → LaTeX auto-compiles.
- PDFs are saved in `build/`.
