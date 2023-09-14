function tree --wraps='exa --tree --level=2' --wraps='eza --tree --level=2' --description 'alias tree=eza --tree --level=2'
  eza --tree --level=2 $argv
        
end
