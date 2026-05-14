
set -g fish_greeting ""

# VS Code shell integration
if string match -q "$TERM_PROGRAM" "vscode"; and command -q code-insiders
    . (code-insiders --locate-shell-integration-path fish)
end

# Starship prompt
# starship init fish | source
