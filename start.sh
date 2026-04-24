#!/bin/bash
set -e

quarto preview "index.ipynb" --host 127.0.0.1 --port 4200 --no-browser --no-watch-inputs &
QUARTO_PID=$!

trap "kill $QUARTO_PID 2>/dev/null" EXIT

exec jupyter lab \
  --ip=0.0.0.0 --port=5000 --no-browser \
  --ServerApp.token='' --ServerApp.password='' \
  --ServerApp.allow_origin='*' --ServerApp.disable_check_xsrf=True \
  --ServerApp.tornado_settings='{"headers":{"Content-Security-Policy":"frame-ancestors *"}}'
