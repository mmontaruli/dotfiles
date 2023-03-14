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
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# MTM# ZSH_THEME=""
# POWERLEVEL9K_MODE='nerdfont-complete'
# # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
# POWERLEVEL9K_STATUS_VERBOSE=false
# # POWERLEVEL9K_TIME_BACKGROUND="#282a2e"
# POWERLEVEL9K_TIME_BACKGROUND="239"
# POWERLEVEL9K_TIME_FOREGROUND="249"
# # POWERLEVEL9K_TIME_FORMAT="%D{%H:%M} \uE12E"
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

# POWERLEVEL9K_HIDE_BRANCH_ICON=true
# # POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# # POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# # POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# # POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
# # POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="➜ "


# # POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# # POWERLEVEL9K_TIME_BACKGROUND='252'

# # POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{white} $(print $'\uE0B1') %F{white}"
# POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{#27292c} $(print $'\uE0B1') %F{#27292c}"
# POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true
# POWERLEVEL9K_FOLDER_ICON=""
# POWERLEVEL9K_HOME_SUB_ICON=""

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(icons_test)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew common-aliases dirhistory macos python rails ruby sublime httpie Forklift zsh-syntax-highlighting z)

# User configuration

DEFAULT_USER=`whoami`

export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Apache Ant
# export JAVA_HOME=$(/usr/libexec/java_home)
# export ANT_HOME=/Users/mattmontaruli/shell/apache-ant-1.10.5
# export PATH=$PATH:bin:$ANT_HOME/bin
# end Apache Ant
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
# export HOMEBREW_GITHUB_API_TOKEN="2a0f00f4b8db1f8c66bd952b02d9dd1047c0015d"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

eval "$(zoxide init zsh)"
# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias c="clear"
alias home="cd ~"
alias desk="cd ~/Desktop"
# . ~/Applications/z-master/z.sh
. ~/shell/z.sh
alias cat='bat'
# alias ls='exa'
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
# alias forklift="open -a ForkLift ."
# alias bluetooth_restart="blueutil -p 0; blueutil -p 1"
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
