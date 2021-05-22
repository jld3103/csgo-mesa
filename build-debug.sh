#!/bin/bash
./setup.sh
cd mesa || exit 1
RECONFIGURE=""
if [ -d debug-build ]; then
  RECONFIGURE="--reconfigure"
fi
meson --prefix="$(readlink -f ../debug-build)" -Dgallium-drivers=radeonsi -Dvulkan-drivers= -Ddri-drivers= -Degl=disabled -Dgbm=disabled --buildtype=debug -Db_lto=false -Dn_debug=false debug-build $RECONFIGURE
ninja -C debug-build install
