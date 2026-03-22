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

rm_ephemeral "./terminal_tools_data.sql"
rm_ephemeral "./terminal_tools.db"

echo "Generate SQL INSERTs"
uv run main.py > terminal_tools_data.sql

# Display results in `bat`
#bat terminal_tools_data.sql

echo "(Re)create database"
sqlite3 terminal_tools.db ".read terminal_tools_schema.sql"

echo "Populate tables"
sqlite3 terminal_tools.db ".read terminal_tools_data.sql"

echo "Hack in tools to languages cross refs"
sqlite3 terminal_tools.db ".read tools_languages_xref.sql"
