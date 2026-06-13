#!/bin/bash
quarto preview "index.ipynb" --host 0.0.0.0 --port $(sh get_port.sh)
