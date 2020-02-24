# Ant
#source /etc/profile.d/apache-ant.sh

# Bin
set PATH ~/bin $PATH
set PATH ~/.local/bin $PATH
set PATH /usr/local/bin $PATH

# Linuxbrew
test -d ~/.linuxbrew; and set PATH ~/.linuxbrew/bin $PATH
test -d ~/.linuxbrew; and set --export LD_LIBRARY_PATH ~/.linuxbrew/lib $LD_LIBRARY_PATH

# Maven
set --export M2_HOME /usr
set --export M2 $M2_HOME/bin
set PATH $M2 $PATH

# Perl
test -d ~/perl5; and set PATH ~/perl5/bin $PATH
test -d ~/perl5; and set -x PERL5LIB ~/perl5/lib/perl5 $PERL5LIB
test -d ~/perl5; and set -x PERL_LOCAL_LIB_ROOT ~/perl5 $PERL_LOCAL_LIB_ROOT
test -d ~/perl5; and set -x PERL_MB_OPT "--install_base \"$HOME/perl5 \"" $PERL_MB_OPT
test -d ~/perl5; and set -x PERL_MM_OPT "INSTALL_BASE=$HOME/perl5" $PERL_MM_OPT

# Python
#export WORKON_HOME=$HOME/.virtualenvs
test -f ~/.cookiecutters/cookiecutter-conf.yaml; and set -x COOKIECUTTER_CONFIG ~/.cookiecutters/cookiecutter-conf.yaml
test -d ~/repos/crypto/beancount_cryptocompare/beancount_cryptocompare; and set -x PYTHONPATH ~/repos/crypto/beancount_cryptocompare/beancount_cryptocompare $PYTHONPATH

# NODE
test -f /usr/bin/npm; and test -d (npm bin); and set -x PATH (npm bin) $PATH

# R
test -d ~/Rlibs; and set -x R_LIBS ~/Rlibs
test -d ~/Rlibs; and set -x PATH $R_LIBS $PATH

# Ruby
test -d ~/.rbenv/versions/2.5.0/bin; and set PATH ~/.rbenv/versions/2.3.0/bin $PATH
test -d ~/.gem/ruby/2.5.0/bin; and set PATH ~/.gem/ruby/2.5.0/bin $PATH

# Go
set GOPATH ~/go
test -d ~/go/bin; and set PATH ~/go/bin $PATH

# Flutter
test -d /opt/flutter; and set PATH /opt/flutter $PATH
test -d /opt/android-sdk; and set ANDROID_SDK_ROOT /opt/android-sdk
test -d /opt/android-sdk; set PATH $ANDROID_SDK_ROOT $PATH
test -d /opt/android-sdk; set PATH $ANDROID_HOME/tools $PATH
test -d /opt/android-sdk; set PATH $ANDROID_HOME/tools/bin $PATH
test -d /opt/android-sdk; set PATH $ANDROID_HOME/platform-tools $PATH

# XDG
set -x XDG_CONFIG_HOME ~/.config

# GPG
set -x GPG_TTY (tty)

# ASDF
test -f /opt/asdf-vm/asdf.fish; and source /opt/asdf-vm/asdf.fish
