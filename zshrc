# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

DISABLE_AUTO_TITLE="true"

plugins=(git brew common-aliases dirhistory macos python rails ruby sublime httpie Forklift zsh-syntax-highlighting z)

# User configuration

DEFAULT_USER=`whoami`

export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
source $ZSH/oh-my-zsh.sh
. `brew --prefix`/etc/profile.d/z.sh

# MTM start zplug
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug "mafredri/zsh-async", from:github
# zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug load
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
# MTM end zplug

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

eval "$(zoxide init zsh)"
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias c="clear"
alias home="cd ~"
alias desk="cd ~/Desktop"
# . ~/Applications/z-master/z.sh
. ~/shell/z.sh
alias cat='bat'
alias ls='exa --icons --group-directories-first'
alias ll='exa -l --icons --no-user --group-directories-first  --time-style long-iso'
alias la='exa -la --icons --no-user --group-directories-first  --time-style long-iso'
alias ping='prettyping --nolegend'
alias top="sudo htop"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias du="ncdu --color dark -rr --exclude .git --exclude node_modules"
alias help="tldr"
alias startvm="VBoxManage startvm \"Debian\""
alias stopdebianvm="VBoxManage controlvm \"Debian\" poweroff"
alias bootdebianhvm="VBoxManage startvm \"Debian\" --type headless"
alias starthvm="bootdebianhvm && ssh debian"
alias stopdebian="stopdebianvm"
alias stopvm="stopdebianvm"
alias stophvm="stopdebianvm"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
eval $(thefuck --alias)
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(nvim {})+abort'"

export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
# source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
eval "$(rbenv init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
