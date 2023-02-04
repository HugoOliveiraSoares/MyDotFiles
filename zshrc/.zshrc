# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz compinit
compinit

setopt autocd
bindkey -e

zstyle :compinstall filename '/home/hugo/.zshrc'
# Created by newuser for 5.9
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autoswitch-virtualenv/autoswitch_virtualenv.plugin.zsh
fpath=(~/.zsh/zsh-completions/src/ $fpath)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export HISTFILE=~/.zsh_history
export SAVEHIST=10000
export HISTSIFE=10000

alias ssh='TERM=xterm-256color ssh'
alias zshconfig="lvim ~/.zshrc"

# ls
alias l='exa -l --icons --classify --git'
alias ls='exa --icons --classify'
alias ll='exa -lah --classify'
alias la='exa -a --icons --classify'
alias lt='exa -T --classify'

# git
alias gcl='git clone'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

# lvim
export PATH=~/.cargo/bin:~/.local/bin:$PATH
alias lv='lvim'

alias dev='cd ~/dev/'

. /opt/asdf-vm/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh
