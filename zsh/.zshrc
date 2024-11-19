# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(starship init zsh)"

# Highlighting while tabbing through autocompletions
autoload -U compinit && compinit
zstyle ':completion:*' menu select=2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Enable case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Set custom color profile (example)
export ZSH_THEME="Catppuccin Mocha"  # Change "agnoster" to your preferred theme
export PATH="/home/$USER/bin:$PATH"
export PYTHONPATH="/home/marc/coding/personal/adventofcode/Python/lib:$PYTHONPATH"

alias ls='exa --icons'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bun completions
[ -s "/home/marc/.bun/_bun" ] && source "/home/marc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/home/marc/.spicetify

export PATH=$PATH:/home/marc/.spicetify
