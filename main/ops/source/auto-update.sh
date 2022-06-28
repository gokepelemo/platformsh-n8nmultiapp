#!/usr/bin/env sh
curl -fsS https://raw.githubusercontent.com/platformsh/source-operations/main/setup.sh | { bash /dev/fd/3 sop-autoupdate; } 3<&0

