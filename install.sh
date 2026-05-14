#!/bin/bash
set -e
 
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# fish 4.0 install
sudo apt-add-repository -y ppa:fish-shell/release-4
sudo apt-get update -q
sudo apt-get install -y fish

# starship install
if ! command -v starship &>/dev/null; then
    curl -fsSL https://starship.rs/install.sh | sh -s -- --yes
fi
 
# symlinks
mkdir -p "$HOME/.vscode-remote/data/Machine"
ln -sf "$DOTFILES/vscode/settings.json" "$HOME/.vscode-remote/data/Machine/settings.json"

mkdir -p "$HOME/.config/fish/"
ln -sf "$DOTFILES_DIR/.config/fish/config.fish" "$HOME/.config/fish/config.fish"
ln -sf "$DOTFILES_DIR/.config/starship.toml" "$HOME/.config/starship.toml"




# Tools
curl -LsSf https://astral.sh/uv/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y &

# TODO: LATEST PNPM