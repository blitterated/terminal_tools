#! /opt/homebrew/bin/bash
set -euo

brew_tools=(c2048 cmatrix container darkhttpd eza findutils gawk git gnu-sed gnu-tar gopass lizard-analyzer moreutils mtr neovim ninvaders sevenzip sops tig tio watch)

for tool in "${brew_tools[@]}"; do
  brew info --json=v1 "${tool}" |
done





: <<'JSON_EXAMPLE'
[
  {
    "name": "darkhttpd",
    "full_name": "darkhttpd",
    "tap": "homebrew/core",
    "oldnames": [],
    "aliases": [],
    "versioned_formulae": [],
    "desc": "Small static webserver without CGI",
    "license": "ISC",
    "homepage": "https://unix4lyfe.org/darkhttpd/",
    "versions": {
      "stable": "1.17",
      "head": null,
      "bottle": true
    },
    "urls": {
      "stable": {
        "url": "https://github.com/emikulic/darkhttpd/archive/refs/tags/v1.17.tar.gz",
JSON_EXAMPLE
