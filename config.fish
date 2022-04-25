alias gitc="git commit -m "fixed""
alias c="g++ -o out.exe"
alias run="./out.exe"
alias uuu="ls -a"
alias uu="ls -l"
alias home="cd ~"
alias chrome="/usr/bin/google-chrome-stable"
alias nochrome="nohup /usr/bin/google-chrome-stable &"
alias reman="sudo reboot now"
if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g -x fish_greeting ''
end
