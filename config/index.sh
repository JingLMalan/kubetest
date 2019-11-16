#! /bin/bash

set -e 
if ["$1" = 'postgres']; then
  chown -R postgres "${PFDARA}"

  if [ -z "$(ls -A "$PFDATA")"]; then 
    gosu postgres initdb 
  fi

  exec gosu postgres "$@"
fi

exec "$@"