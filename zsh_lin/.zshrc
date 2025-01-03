# Set TERM depending on whether tmux is running
export COLORTERM="truecolor"
if [ -n "$TMUX" ]; then
  export TERM="screen-256color"
else
  export TERM="xterm-256color"
fi

export ZSH="$HOME/.oh-my-zsh"
eval "$(starship init zsh)"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source /home/parallels/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

. /home/parallels/.oh-my-zsh/custom/plugins/z/z.sh

skip_global_compinit=1

# Set up fzf key bindings and fuzzy completion
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

alias ls='eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias top='sudo htop'
alias bat='batcat'
alias cat='batcat'
alias preview="fzf --preview 'batcat --color \"always\" {}'"
alias inv='nvim $(fzf -m --preview="batcat --color=always {}")'


neofetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
