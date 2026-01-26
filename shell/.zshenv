# -----------------------------
# ~/.zshenv
# -----------------------------
skip_global_compinit=1
# Default Programs
export VISUAL=nvim
export EDITOR=nvim
export BROWSER="firefox"
export GIT_EDITOR=nvim

export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_PICTURES_DIR="$HOME/media/Pictures/Screenshots/"

export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
export NVM_DIR="$HOME/.nvm"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
export TMUX_CONF="$XDG_CONFIG_HOME/tmux/tmux.conf"

# ui themes
export EZA_ICONS_AUTO=always
# export EZA_CONFIG_DIR="$XDG_CONFIG_HOME/eza"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export CHEAT_CONFIG_PATH="$XDG_CONFIG_HOME/cheat/conf.yml"
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=1
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64/"

