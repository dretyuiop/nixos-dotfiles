function paculck --wraps='sudo rm /var/lib/pacman/db.lck' --description 'alias paculck=sudo rm /var/lib/pacman/db.lck'
  sudo rm /var/lib/pacman/db.lck $argv
        
end
