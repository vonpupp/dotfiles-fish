# Shell
abbr -a l 'ls -lh'
abbr -a ll 'ls -alhtr'
abbr -a lls 'ls -alhSr'
abbr -a lt 'ls -alhtr'
abbr -a psg 'ps aux | ag --smart-case'
alias mkdir "mkdir -p"
abbr -a ff 'find . | ag --smart-case'
abbr -a fd 'find . -type d | ag --smart-case'
abbr -a fc 'rg --line-number --no-heading --color=always --ignore-case --hidden'
abbr -a du 'du -hs'
abbr -a rsync 'rsync -av --partial --append-verify --inplace'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Git
abbr -a ga 'git add'
abbr -a gb 'git branch'
abbr -a gco 'git checkout'
abbr -a gd 'git diff'
abbr -a gp 'git push'
abbr -a gs 'git status -sb'
abbr -a gu 'git pull --rebase'

# Conditional abbreviations
test -f ~/.local/bin/trash; and abbr -a rm 'trash'
test -f ~/.local/bin/pydf; and abbr -a df 'pydf'
test -f /usr/bin/colordiff; and abbr -a diff 'colordiff'

# Sudo abbreviations
abbr -a pm-suspend 'sudo pm-suspend'
abbr -a reboot 'sudo reboot'
abbr -a shutdown 'sudo shutdown'

abbr -a du du -hs
abbr -a bc bc -l

# alias llsize='l --group-directories-first -S'
# alias emacs-restart='pkill emacs; emacs --daemon'
# alias le='less'
alias cpsshkey='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias t='task'
# alias habit='task rc.data.config=~/.habitwarriorrc rc.data.location=~/.habitwarrior'
alias impersonatewm='wmname LG3D'
abbr -a pt 'ping google.com'

# # fasd aliases
# alias ee='fasd -ae e'
# alias ed='fasd -de e'
# alias ef='fasd -fe e'
# alias vd='fasd -de vim'
# alias vf='fasd -fe vim'
#
# Load/reload
# abbr -a homeshickload source ~/.homesick/repos/homeshick/homeshick.sh
alias xresourcesload="xrdb ~/.Xresources"

# # Node
# alias npm-exec='PATH=$(npm bin):$PATH'

# # Django
# #alias manage='python $VIRTUAL_ENV/../manage.py'

# GPG
alias gpg="gpg2"
alias gpg-decrypt="gpg --passphrase-fd 0 --decrypt-files $ARGV"

# Kill
#alias kill-zombies='kill -HUP $(ps -A -ostat,ppid | grep -e "[zZ]"| awk "{ print $2 }")'
