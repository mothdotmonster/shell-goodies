#!/bin/sh

# spoofmail - gaslight cronie into giving you desktop notifications
# made with <3 from moth.monster

# SPDX-License-Identifier: MIT-0

stdin="$(cat)" # don't call PETA

commandName=$(echo "$stdin" | sed -n '3p' | cut -d ">" -f2-) # string magic
commandOutput=$(echo "$stdin" | tail +16)

XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send --icon=dialog-warning "Cronjob error:$commandName" "$commandOutput"