#! /usr/bin/env bash

dump_filename="terminal_tools_dump.sql"
backup_filename="${dumpfile}.bak"

# Delete old backup
if [ -f "${backup_filename}" ]; then
  rm "${backup_filename}"
fi

# Back up existing dump file script
mv "${dump_filename}" "${backup_filename}"

# Dump the database to SQL
sqlite3 terminal_tools.db .dump | \
tee "${dump_filename}" | \
bat -l sql
