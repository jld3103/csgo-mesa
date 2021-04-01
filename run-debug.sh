#!/bin/bash
set -ex
export LIBGL_DRIVERS_PATH="$(dirname "$(readlink -f "$0")")/debug-build/lib/dri"
cd ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive || exit 1
DEBUGGER=gdb ./csgo.sh -steam
