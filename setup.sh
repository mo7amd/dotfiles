#!/bin/bash
echo "$(whoami)"
for f in ./scripts/*; do ln -s "$f" "/Users/$(whoami)/.local/bin"; done