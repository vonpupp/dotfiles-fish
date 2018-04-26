# Shell
abbr -a l ls -lh
abbr -a ll ls -alh
abbr -a lls ls -alhSr
abbr -a lt ls -alhtr
abbr -a psg 'ps aux | ag --smart-case'

# Git
abbr -a ga git add
abbr -a gb git branch
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gp git push
abbr -a gs git status -sb
abbr -a gu git pull --rebase

# Conditional abbreviations
test -f ~/.local/bin/trash; and abbr -a rm trash
test -f ~/.local/bin/pydf; and abbr -a df pydf
test -f /usr/bin/colordiff; and abbr -a diff colordiff

# Sudo abbreviations
abbr -a pm-suspend sudo pm-suspend
abbr -a reboot sudo reboot
abbr -a shutdown sudo shutdown

# Misc abbreviations
abbr -a du du -hs

# alias llsize='l --group-directories-first -S'
# alias pbcopy='xsel --clipboard --input'
# alias pbpaste='xsel --clipboard --output'
# alias psg='ps aux | grep'
# alias emacs-restart='pkill emacs; emacs --daemon'
# alias g='grep -i'
# alias x='dtrx'
# alias le='less'
# alias za='zathura'
# alias v='vim --servername vim'
# alias view='vim -R -'
# alias cpsshkey='xclip -sel clip < ~/.ssh/id_rsa.pub'
# alias ff='find |grep'
# alias t='task'
# alias habit='task rc.data.config=~/.habitwarriorrc rc.data.location=~/.habitwarrior'
# alias impersonatewm='wmname LG3D'
# alias pt='ping google.com'
#
# # fasd aliases
# alias ee='fasd -ae e'
# alias ed='fasd -de e'
# alias ef='fasd -fe e'
# alias vd='fasd -de vim'
# alias vf='fasd -fe vim'
#
# # Load/reload
# alias homeshickload='source ~/.homesick/repos/homeshick/homeshick.sh'
# alias homeshicklink='~/bin/homeshick-link-bb.sh'
# alias xresourcesload="xrdb ~/.Xresources"
#
# # Node
# alias npm-exec='PATH=$(npm bin):$PATH'
#
# # Latex
# alias latexmkcompile="grep -l '\\documentclass' *tex | xargs latexmk -pdf -pvc -silent"
#
# # Django
# #alias manage='python $VIRTUAL_ENV/../manage.py'
#
# # GPG
# alias gpg=gpg2
# alias gpg-decrypt='gpg --passphrase-fd 0 --decrypt-files *.gpg'
# #alias otp='otp -c'
