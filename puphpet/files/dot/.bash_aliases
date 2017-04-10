#source ~/.bashrc

alias bitch='sudo'


# Git
alias gp='git push'
alias gs='git status'
alias gc='git commit -m '
alias gca='git commit -am '
alias ga='git add .'
alias gd='git diff --staged'
alias gl='git log --color --graph'
alias gll="git log --graph --pretty=format:'%Cgreen%h%Creset -%Creset %s%C(yellow)%d %Cblue(%aN, %cr)%Creset' --abbrev-commit --date=relative"
alias hier='log --all --graph --decorate --oneline --simplify-by-decoration'

# ssh
alias sshminos='ssh $(whoami)@172.31.3.9'

