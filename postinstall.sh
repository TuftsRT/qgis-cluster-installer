#!/bin/sh
sed -i "s|%PREFIX%|$PREFIX|g" "$PREFIX/utils/initialize.sh"
sed -i "s|%PREFIX%|$PREFIX|g" "$PREFIX/ood/launch.sh"
