function fish_greeting
	if test -e ~/.config/fortune/kjv
		fortune ~/.config/fortune/kjv
	end

	echo ---
	echo Pacman available updates (pacman -Qqu | wc -l)
end
