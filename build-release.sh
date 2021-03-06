#!/bin/bash
./setup.sh
cd mesa || exit 1
RECONFIGURE=""
if [ -d release-build ]; then
  RECONFIGURE="--reconfigure"
fi
meson --prefix="$(readlink -f ../release-build)" -Dgallium-drivers=radeonsi -Dvulkan-drivers= -Ddri-drivers= -Degl=disabled -Dgbm=disabled --buildtype=release -Db_lto=true -Db_ndebug=true release-build $RECONFIGURE
ninja -C release-build install
