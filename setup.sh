#!/bin/bash
git submodule init
git submodule update --remote --merge
sed -i "s/_mesa_is_no_error_enabled(ctx)/false/g" mesa/src/mesa/main/uniform_query.cpp
