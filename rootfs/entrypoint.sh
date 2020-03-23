#!/bin/bash
if [[ "${1:0:1}" == '-' ]]; then
  set -- calibre "$@"
fi
exec $(eval "echo $@")
