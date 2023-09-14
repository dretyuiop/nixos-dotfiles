function la --wraps=ls --wraps='exa --long --header --all' --wraps='exa --long --header --all --icons' --wraps='eza --long --header --all --icons' --description 'alias la=eza --long --header --all --icons'
  eza --long --header --all --icons $argv
        
end
