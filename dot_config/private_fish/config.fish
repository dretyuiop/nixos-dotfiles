if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init --cmd cd fish | source
    starship init fish | source
    source ~/.config/fish/conf.d/autopair.fish
    set -x DOCKER_HOST unix://$XDG_RUNTIME_DIR/podman/podman.sock
end
