# Rust Book (Quarto)

Korean Rust book authored as a Quarto website using Jupyter notebooks (`*.ipynb`).

## Stack
- **Build system**: Quarto (installed as a Nix system dependency)
- **Source format**: Jupyter notebooks rendered via Quarto
- **Output**: Static site in `_site/`

## Development
- Workflow `Start application` runs `quarto preview --host 0.0.0.0 --port 5000 --no-browser` and serves the live preview on port 5000.

## Deployment
- Static deployment: builds with `quarto render` and serves the `_site/` directory.
