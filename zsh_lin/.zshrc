export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"
#eval "$(oh-my-posh init zsh --config ~/.poshthemes/catppuccin.omp.json)"
eval "$(starship init zsh)"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source /home/parallels/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

. /home/parallels/.oh-my-zsh/custom/plugins/z/z.sh

skip_global_compinit=1

# Set up fzf key bindings and fuzzy completion
# eval "$(fzf --zsh)"
export GOPATH=$HOME/go
#export PATH=$PATH:$GOPATH/bin
export PATH=$GOPATH/bin:$PATH

alias ls='eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias top='htop'
alias bat='batcat'
alias cat='batcat'
alias preview="fzf --preview 'batcat --color \"always\" {}'"
alias inv='nvim $(fzf -m --preview="batcat --color=always {}")'

#precmd() {
#    print ""
#}

neofetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
