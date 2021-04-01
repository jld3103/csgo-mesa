#!/bin/bash
set -ex
export LIBGL_DRIVERS_PATH="$(dirname "$(readlink -f "$0")")/release-build/lib/dri"
cd ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive || exit 1
./csgo.sh -steam
