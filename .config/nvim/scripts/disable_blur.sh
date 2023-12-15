#!/bin/bash
sed -i "s/\(\"[0-9]\+:class_g\s*=\s*'kitty'\"\)/#\1/g" ~/.config/picom/picom.conf

