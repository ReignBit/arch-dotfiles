# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
	git
	zsh-autosuggestions
)

#pywal for colors from wallpaper
(cat ~/.cache/wal/sequences &)

#pywal support for TTYs
source ~/.cache/wal/colors-tty.sh


fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
autoload -U colors && colors

source $ZSH/oh-my-zsh.sh

# User configuration
alias kssh="kitten ssh"
alias neofetch="fastfetch"
alias notepad="leafpad"
alias ccat="pygmentize -g"
alias vim="nvim"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# SSH Agent
eval "$(ssh-agent -s)" > /dev/null 2>&1

# Add our github key
ssh-add ~/.ssh/github_ssh_key > /dev/null 2>&1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
