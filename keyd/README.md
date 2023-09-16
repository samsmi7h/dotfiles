# KeyD configuration

## What is KeyD?
A key remapping daemon that's environment agnostic. The only remapping tool that I could get to work simply on Wayland. It's really simple to configure.

## Setup
Install as described in the repo: https://github.com/rvaiya/keyd

Put the mapping file in `/etc/keyd/default.conf`

Run `sudo keyd reload` whenever you change the mapping file.
