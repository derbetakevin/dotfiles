# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd nomatch
unsetopt beep extendedglob notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/derbetakevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Flag more than one job at a time while compiling
if type nproc &>/dev/null; then   # GNU/Linux
	  export MAKEFLAGS="$MAKEFLAGS -j$(($(nproc)-1))"
  elif type sysctl -n hw.ncpu &>/dev/null; then   # macOS, FreeBSD
	    export MAKEFLAGS="$MAKEFLAGS -j$(($(sysctl -n hw.ncpu)-1))"
fi

###Shell Design###
eval "$(starship init zsh)"

#PROMPT='%F{green}%n%f@%F{yellow}%m%f %F{yellow}%B%~%b%f %# '

# Keybindings

bindkey '^[[3~' delete-char                     # Key Del
bindkey '^[[5~' beginning-of-buffer-or-history  # Key Page Up
bindkey '^[[6~' end-of-buffer-or-history        # Key Page Down
bindkey '^[[1;3D' backward-word                 # Key Alt + Left
bindkey '^[[1;3C' forward-word                  # Key Alt + Right
bindkey '^[[H' beginning-of-line                # Key Home
bindkey '^[[F' end-of-line                      # Key End

# Ignore case-sensitivity when TAB completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Flex
pfetch
echo "zsh macht zzz zzz zzz"

source ~/.aliases

#OS-specific
#source ~/.zsh_arch
#source ~/.zsh_fedora
#source ~/.zsh_nixos
source ~/.aliases_nixos_flake
#source ~/.zsh_opensuse
#source ~/.zsh_ubuntu