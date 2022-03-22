#!/bin/bash

nanodir="${HOME}/${ABBREVIATION^}"
echo "$(date) - nanodir ${nanodir}"

if [ "${ENABLE_CONTROL}" == 1 ]; then
  # enable_control
  echo "$(date) - enable_control = true"
  grep -r -l 'enable_control = false' "${nanodir}" | sort | uniq | xargs perl -e "s/enable_control = false/enable_control = true/" -pi
else
  # disable_control
  echo "$(date) - enable_control = false"
  grep -r -l 'enable_control = true' "${nanodir}" | sort | uniq | xargs perl -e "s/enable_control = true/enable_control = false/" -pi
fi
