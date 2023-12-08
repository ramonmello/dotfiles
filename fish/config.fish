
# aliases
alias la "ls -A"
alias g git
alias nv nvim
alias lzg lazygit

set fish_greeting

eval "$(/opt/homebrew/bin/brew shellenv)"

if status is-interactive
    atuin init fish | source
end

starship init fish | source
