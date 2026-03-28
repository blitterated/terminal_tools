#! /usr/bin/env bash

# Fail script on any error [-e].
# Fail script on unassigned variable usage [-u].
set -eu

rm_ephemeral () {
  filename="${1}"
  if [ -f "${filename}" ]; then
    echo "Delete generated ${filename}."
    rm "${filename}"
  else
    echo "No generated ${filename} found."
  fi
}

rm_ephemeral "./terminal_tools.db"

echo "Restore database"
sqlite3 terminal_tools.db ".read terminal_tools_dump.sql"
