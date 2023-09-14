function ls --wraps='exa --long --header' --wraps='exa --long --header --icons' --wraps='eza --long --header --icons' --description 'alias ls=eza --long --header --icons'
  eza --long --header --icons $argv
        
end
