#!/bin/sh

# get root sudo password
echo "Input root password"
read root_password
echo $root_password > ./root_password

# get the files
cd ~/.config
git clone git@github.com:dretyuiop/nixos.git
mv ./nixos ./home-manager

# link configuration.nix
cat ./root_password | sudo -S ln -s ./home-manager/configuration.nix /etc/nixos/configuration.nix

# set up channels
cat ./root_password | sudo -S nix-channel --remove nixos
cat ./root_password | sudo -S nix-channel --add https://nixos.org/channels/nixos-unstable nixos
cat ./root_password | sudo -S nix-channel --update

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --add https://github.com/pjones/plasma-manager/archive/master.tar.gz plasma-manager
nix-channel --update

cat ./root_password | sudo -S nixos-rebuild
nix --experimental-features 'nix-command flakes' run github:nix-community/home-manager#home-manager switch --impure
