#!/bin/bash
set -e
 
DOTFILES="$(cd "$(dirname "$0")" && pwd)"
 
# Latest fish 4.x
sudo apt-add-repository -y ppa:fish-shell/release-4
sudo apt-get update -q
sudo apt-get install -y fish
 
# Symlinks
mkdir -p "$HOME/.vscode-remote/data/Machine"
ln -sf "$DOTFILES/vscode/settings.json" "$HOME/.vscode-remote/data/Machine/settings.json"

# Tools
curl -LsSf https://astral.sh/uv/install.sh | sh
