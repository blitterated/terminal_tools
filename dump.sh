#! /usr/bin/env bash
sqlite3 terminal_tools.db .dump | \
tee terminal_tools_dump.sql | \
bat -l sql
