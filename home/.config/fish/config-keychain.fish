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
