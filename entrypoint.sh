#!/bin/sh
chmod +x entrypoint.sh
pytest
pytest --browser firefox
pytest --browser chromium
if [ $? -eq 0 ]; then exit 0; else exit 1; fi

