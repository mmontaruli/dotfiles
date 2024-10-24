export COLORTERM="truecolor"

# Set TERM depending on whether tmux is running
if [ -n "$TMUX" ]; then
  export TERM="screen-256color"
else
  export TERM="xterm-256color"
fi
export ZSH=~/.oh-my-zsh
# export LANG="en_US.UTF-8"
# export LC_COLLATE="en_US.UTF-8"
# export LC_CTYPE="en_US.UTF-8"
# export LC_MESSAGES="en_US.UTF-8"
# export LC_MONETARY="en_US.UTF-8"
# export LC_NUMERIC="en_US.UTF-8"
# export LC_TIME="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

DISABLE_AUTO_TITLE="true"

plugins=(git brew common-aliases dirhistory macos python rails ruby sublime httpie Forklift zsh-syntax-highlighting z)

# User configuration

DEFAULT_USER=`whoami`

export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
source $ZSH/oh-my-zsh.sh
. `brew --prefix`/etc/profile.d/z.sh

source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# MTM start zplug
# export ZPLUG_HOME=$(brew --prefix)/opt/zplug
# source $ZPLUG_HOME/init.zsh
# zplug "mafredri/zsh-async", from:github
# zplug load
# # Install plugins if there are plugins that have not been installed
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi
# MTM end zplug

eval "$(starship init zsh)"

source <(fzf --zsh)

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(zoxide init zsh)"
alias home="cd ~"
alias cat='bat'
alias ls='eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'
# Eza
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"
alias ping='prettyping --nolegend'
# alias top="sudo htop"
alias top="btm"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias du="ncdu --color dark -rr --exclude .git --exclude node_modules"
alias help="tldr"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
eval $(thefuck --alias)
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(nvim {})+abort'"

export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:/opt/homebrew/lib/python3.11/site-packages
eval "$(rbenv init -)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
