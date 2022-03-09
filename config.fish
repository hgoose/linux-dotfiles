alias gitc="git commit -m "fixed""
alias c="g++ -o out.exe"
alias run="~./run.exe"
alias uu="ls -a"
if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g -x fish_greeting ''
    starship init fish | source
end
