#! /usr/bin/env bash
rm terminal_tools_data.sql
uv run main.py > terminal_tools_data.sql
bat terminal_tools_data.sql
