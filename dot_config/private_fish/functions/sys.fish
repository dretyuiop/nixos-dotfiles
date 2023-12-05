function sys --wraps=systemctl --wraps='sudo systemctl' --description 'alias sys=sudo systemctl'
  sudo systemctl $argv
        
end
