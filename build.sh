#!/bin/bash

VERSION=${PKG_VERSION:-$(git describe --exact-match --tags)}
NAME="xkb-layout-mepo"

_self=$(dirname $(realpath "$0"))

fpm -s dir -t deb -p "$NAME-$VERSION.deb" \
   --name "$NAME" --version "$VERSION" \
   --before-install "$_self/preinst.sh" \
   usr/share/X11/xkb/symbols/mepo \
   usr/share/X11/xkb/symbols/inet \
   usr/share/X11/xkb/rules/xorg.xml \
   usr/share/X11/xkb/rules/xorg.lst \
   usr/share/X11/xkb/rules/evdev.xml \
   usr/share/X11/xkb/rules/evdev.lst

