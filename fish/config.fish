# aliases
alias la "ls -A"
alias g git
alias nv nvim
alias lzg lazygit

set fish_greeting

eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
