#! /usr/bin/env bash

# Delete generated files
rm terminal_tools_data.sql
rm terminal_tools.db

# Generate SQL INSERTs
uv run main.py > terminal_tools_data.sql

# Display results in `bat`
bat terminal_tools_data.sql

# (Re)create database
sqlite3 terminal_tools.db ".read terminal_tools_schema.sql"

# Populate tables
#sqlite3 terminal_tools.db ".read terminal_tools_data.sql"
