function pacpurge
	while ! [ "$(pacman -Qdtq)" = "" ]
		sudo pacman -Rn $(pacman -Qdtq)
	end
end

