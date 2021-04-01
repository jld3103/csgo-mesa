#!/bin/bash
cd mesa || exit 1
RECONFIGURE=""
if [ -d release-build ]; then
  RECONFIGURE="--reconfigure"
fi
meson --prefix="$(readlink -f ../release-build)" -Dgallium-drivers=radeonsi,swrast --buildtype=release -Db_lto=true -Dn_debug=true release-build $RECONFIGURE
ninja -C release-build install
