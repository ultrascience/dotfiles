#!/bin/bash

statusLine=$(amixer get Capture | tail -n 1)
status=$(echo "${statusLine}" | grep -wo "on")
volume=$(echo "${statusLine}" | awk -F ' ' '{print $5}' | tr -d '[]%')

if [[ "${status}" == "on" ]]; then
  echo " ${volume}%"
else
  echo " Mute"
fi
