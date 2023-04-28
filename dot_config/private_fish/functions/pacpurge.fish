function pacpurge
	while ! [ "$(pacman -Qdtq)" = "" ]
		sudo pacman --noconfirm -Rn $(pacman -Qdtq)
	end
end

