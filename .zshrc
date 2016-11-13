# export language options
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [ -f "${HOME}/.zgen/zgen.zsh" ]; then
    source "${HOME}/.zgen/zgen.zsh"
else
    echo "zgen not installed"
    exit 1
fi

# load alias
if [ -f "$HOME/.alias" ]; then
    source "${HOME}/.alias"
else
    echo ".alias not found"
fi

# if init script doesn't exist
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/gitfast
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/grunt
    zgen load zsh-users/zsh-syntax-highlighting

    #completions
    zgen load zsh-users/zsh-completions src

    # my theme
    zgen load ~/.zsh-plugins/themes/my.zsh-theme

    # history
    # TODO:look at this https://github.com/zsh-users/zsh-history-substring-search

    zgen save
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
    export VISUAL='vim'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"
# dircolors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# apply gruvbox color palette TODO: check -f and 256 color support
source ~/.vim/plugged/gruvbox/gruvbox_256palette.sh

# fzf shortcuts
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ -x /usr/bin/ag ]; then
    export FZF_DEFAULT_COMMAND='ag -g ""'
fi
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}  use-cache yes
