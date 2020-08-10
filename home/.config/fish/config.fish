#. ~/.config/fish/config-variables.fish
#. ~/.config/fish/config-aliases.fish
##. ~/.config/fish/config-aliases-os.fish
##. ~/.config/fish/config-accessibility.fish
#. ~/.config/fish/config-colors.fish
##. ~/.config/fish/config-keybindings.fish
##. ~/.config/fish/config-options.fish
#. ~/.config/fish/config-autorun.fish
#. ~/.config/fish/config-theme.fish

# Base PATH
set PATH ~/bin $PATH

# Add extra CONFIG components
for file in ~/.config/fish/config-*.fish
    . $file
end

# Add extra PATH components
for file in ~/.config/fish/path-*.fish
    . $file
end

if test "$TERM" = "dumb"
    function fish_title; end
end

# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

# this function may be required
function fish_title
  true
end

# Theme
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_date yes
