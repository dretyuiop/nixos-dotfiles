function la --wraps=ls --wraps='exa --long --header --all' --wraps='exa --long --header --all --icons' --description 'alias la=exa --long --header --all --icons'
  exa --long --header --all --icons $argv
        
end
