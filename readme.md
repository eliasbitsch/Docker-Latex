# LaTeX Devcontainer Setup

A basic LaTeX environment in Docker for **VS Code** or manual use.  
Supports **German** (`ngerman`) and **biblatex**.  
Auto-compiles LaTeX **on save** (Ctrl+S) using **James-Yu.latex-workshop**.

---

## Folder Structure

```
my-project/
├── .devcontainer/         # VS Code settings
│   └── devcontainer.json
├── tex-project/
│   └── TWBooks_v2.24/      # Your LaTeX files
│       ├── BSP_BA_IEEE_de.tex
│       └── build/         # Output PDFs
├── Dockerfile              # Docker config
├── start                   # Build/run script
└── README.md               # This guide
```
---

## Requirements

- Docker installed
- VS Code + "Dev Containers" extension

---

## Setup

```bash
git clone https://github.com/eliasbitsch/Docker-Latex.git
```
```bash
cd Docker-Latex
```
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
