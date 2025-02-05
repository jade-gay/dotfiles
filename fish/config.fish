if status is-interactive
    pawfetch
end

export PATH="$HOME/bin:$PATH"

set -g fish_greeting ''

starship init fish | source
alias hy "nvim ~/.config/hypr/"
bind \cd end-of-line
bind \cx delete-char
