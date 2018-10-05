function fish_greeting
	if test -e ~/.config/fortune/kjv
		fortune ~/.config/fortune/kjv
	end

	echo ---
    ~/bin/archlinux-available-updates-autorun.sh
	# echo Pacman available updates (pacman -Qqu | wc -l)
end
