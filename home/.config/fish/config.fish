. ~/.config/fish/config-variables.fish
. ~/.config/fish/config-aliases.fish
#. ~/.config/fish/config-aliases-os.fish
#. ~/.config/fish/config-accessibility.fish
. ~/.config/fish/config-colors.fish
#. ~/.config/fish/config-keybindings.fish
#. ~/.config/fish/config-options.fish
. ~/.config/fish/config-autorun.fish
. ~/.config/fish/config-theme.fish

# Base PATH
set PATH ~/bin $PATH

# Add extra PATH components
for file in ~/.config/fish/path-*.fish
    . $file
end

# Keychain
if test -e /usr/bin/keychain
	if status --is-interactive
		# keychain --quiet --agents ssh
		keychain --quiet --agents ssh id_rsa
	end

	begin
		set -l HOSTNAME (hostname)
		if test -f ~/.keychain/$HOSTNAME-fish
			source ~/.keychain/$HOSTNAME-fish
		end
	end
end
