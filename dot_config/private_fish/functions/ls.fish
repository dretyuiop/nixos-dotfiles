function ls --wraps='exa --long --header' --wraps='exa --long --header --icons' --description 'alias ls=exa --long --header --icons'
  exa --long --header --icons $argv
        
end
