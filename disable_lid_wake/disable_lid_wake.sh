#!/bin/bash

while [ 1 -lt 2 ]; do
  lid="$( cat /proc/acpi/wakeup | grep LID)"
  lid2="$(echo "${lid}" | grep enabled)"
  if [[ "$lid2" != "" ]]; then
    echo LID > /proc/acpi/wakeup
  fi
  sleep 1
done
