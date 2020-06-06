# *** fish config file ***
# https://fishshell.com/
# Location : ~/.config/fish/config.fish
# default MacOS
# Add /usr/local/bin/fish to /etc/shells
# chsh -s /usr/local/bin/fish

# Vim key binding
fish_vi_key_bindings

# https://starship.rs/
starship init fish | source

# direnv:
eval (direnv hook fish)

alias vi=nvim
alias vim=nvim
alias poetry=~/.poetry/bin/poetry

function venv
    source venv/bin/activate.fish
end

function __check_rvm --on-variable PWD --description 'Activate venv if any'
    if ls | grep venv > /dev/null
        echo activate venv
        source venv/bin/activate.fish
    end
end

