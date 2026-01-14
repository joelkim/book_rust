#!/bin/bash
quarto render
ghp-import -c rustbook.madebykim.kr -f -n -o -p _site
