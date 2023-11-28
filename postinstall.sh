#!/bin/sh
sed -i "s|%PREFIX%|$PREFIX|g" "$PREFIX/shell/initialize.sh"
sed -i "s|%PREFIX%|$PREFIX|g" "$PREFIX/ood/launch.sh"
