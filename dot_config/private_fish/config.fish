if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/.cargo/bin

alias ls 'eza -l'
alias ff fastfetch

if command -q mise
    mise activate fish | source
end

if command -q starship
    starship init fish | source
end
