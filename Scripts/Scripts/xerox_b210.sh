#!/bin/bash
set -euo pipefail
bash ./Scripts/XeroxB210/uld/install.sh -y
cp ./Scripts/XeroxB210/uld/x86_64/rastertospl /usr/lib/cups/filter/
exit