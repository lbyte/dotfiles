NEWLINE='
'

# PROMPT
SPACESHIP_PROMPT_SYMBOL="${SPACESHIP_PROMPT_SYMBOL:-➔}"
SPACESHIP_PROMPT_ADD_NEWLINE="${SPACESHIP_PROMPT_ADD_NEWLINE:-false}"
SPACESHIP_PROMPT_SEPARATE_LINE="${SPACESHIP_PROMPT_SEPARATE_LINE:-false}"
SPACESHIP_PROMPT_TRUNC="${SPACESHIP_PROMPT_TRUNC:-3}"

# GIT
SPACESHIP_GIT_SHOW="${SPACESHIP_GIT_SHOW:-true}"
SPACESHIP_GIT_UNCOMMITTED="${SPACESHIP_GIT_UNCOMMITTED:-+}"
SPACESHIP_GIT_UNSTAGED="${SPACESHIP_GIT_UNSTAGED:-!}"
SPACESHIP_GIT_UNTRACKED="${SPACESHIP_GIT_UNTRACKED:-?}"
SPACESHIP_GIT_STASHED="${SPACESHIP_GIT_STASHED:-$}"
SPACESHIP_GIT_UNPULLED="${SPACESHIP_GIT_UNPULLED:-⇣}"
SPACESHIP_GIT_UNPUSHED="${SPACESHIP_GIT_UNPUSHED:-⇡}"

# NVM
SPACESHIP_NVM_SHOW="${SPACESHIP_NVM_SHOW:-true}"
SPACESHIP_NVM_SYMBOL="${SPACESHIP_NVM_SYMBOL:-⬢}"


# Username.
# If user is root, then pain it in red. Otherwise, just print in yellow.

# Username and SSH host
# If there is an ssh connections, then show user and current machine.
# If user is not $USER, then show username.
spaceship_host() {
  if [[ $USER == 'root' ]]; then
    echo -n "%{$fg_bold[red]%}"
  else
    echo -n "%{$fg_bold[green]%}"
  fi
  echo -n "%n"
  echo -n "@"
  echo -n "%m%{$reset_color%}"
  echo -n ":"
}

# Current directory.
# Return only three last items of path
spaceship_current_dir() {
  echo -n "%{$FG[033]%}"
  echo -n "%${SPACESHIP_PROMPT_TRUNC}~";
  echo -n "%{$reset_color%}"
}

# Uncommitted changes.
# Check for uncommitted changes in the index.
spaceship_git_uncomitted() {
  if ! $(git diff --quiet --ignore-submodules --cached); then
    echo -n "${SPACESHIP_GIT_UNCOMMITTED}"
  fi
}

# Unstaged changes.
# Check for unstaged changes.
spaceship_git_unstaged() {
  if ! $(git diff-files --quiet --ignore-submodules --); then
    echo -n "${SPACESHIP_GIT_UNSTAGED}"
  fi
}

# Untracked files.
# Check for untracked files.
spaceship_git_untracked() {
  if [ -n "$(git ls-files --others --exclude-standard)" ]; then
    echo -n "${SPACESHIP_GIT_UNTRACKED}"
  fi
}

# Stashed changes.
# Check for stashed changes.
spaceship_git_stashed() {
  if $(git rev-parse --verify refs/stash &>/dev/null); then
    echo -n "${SPACESHIP_GIT_STASHED}"
  fi
}

# Unpushed and unpulled commits.
# Get unpushed and unpulled commits from remote and draw arrows.
spaceship_git_unpushed_unpulled() {
  # check if there is an upstream configured for this branch
  command git rev-parse --abbrev-ref @'{u}' &>/dev/null || return

  local count
  count="$(command git rev-list --left-right --count HEAD...@'{u}' 2>/dev/null)"
  # exit if the command failed
  (( !$? )) || return

  # counters are tab-separated, split on tab and store as array
  count=(${(ps:\t:)count})
  local arrows left=${count[1]} right=${count[2]}

  (( ${right:-0} > 0 )) && arrows+="${SPACESHIP_GIT_UNPULLED}"
  (( ${left:-0} > 0 )) && arrows+="${SPACESHIP_GIT_UNPUSHED}"

  [ -n $arrows ] && echo -n "${arrows}"
}

# Git status.
# Collect indicators, git branch and pring string.
spaceship_git_status() {
  [[ $SPACESHIP_GIT_SHOW == false ]] && return

  # Check if the current directory is in a Git repository.
  command git rev-parse --is-inside-work-tree &>/dev/null || return

  # Check if the current directory is in .git before running git checks.
  if [[ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]]; then
    # Ensure the index is up to date.
    git update-index --really-refresh -q &>/dev/null

    # String of indicators
    local indicators=''

    indicators+="$(spaceship_git_uncomitted)"
    indicators+="$(spaceship_git_unstaged)"
    indicators+="$(spaceship_git_untracked)"
    indicators+="$(spaceship_git_stashed)"
    indicators+="$(spaceship_git_unpushed_unpulled)"

    [ -n "${indicators}" ] && indicators=" [${indicators}]";

    echo -n "%{$FG[208]%}"
    echo -n " ("
    echo -n "$(git_current_branch)"
    echo -n ")"
    echo -n "%{$reset_color%}"
    echo -n "%{$fg_bold[red]%}"
    echo -n "%{$indicators%}"
    echo -n "%{$reset_color%}"
  fi
}


# NVM
# Show current version of node, exception system.
spaceship_nvm_status() {
  [[ $SPACESHIP_NVM_SHOW == false ]] && return

  $(type nvm >/dev/null 2>&1) || return

  local nvm_status=$(nvm current 2>/dev/null)
  [[ "${nvm_status}" == "system" ]] && return
  nvm_status=${nvm_status}

  echo -n " %Bvia%b "
  echo -n "%{$fg_bold[green]%}"
  echo -n "${SPACESHIP_NVM_SYMBOL} ${nvm_status}"
  echo -n "%{$reset_color%}"
}


# Command prompt.
# Pain $PROMPT_SYMBOL in red if previous command was fail and
# pain in green if all OK.
spaceship_return_status() {
  echo -n "%(?.%{$fg[green]%}.%{$fg[red]%})"
  echo -n "%B${SPACESHIP_PROMPT_SYMBOL}%b"
  echo    "%{$reset_color%}"
}

# Build prompt line
spaceship_build_prompt() {
  spaceship_host
  spaceship_current_dir
  spaceship_git_status
  spaceship_nvm_status
}

# Disable python virtualenv environment prompt prefix
VIRTUAL_ENV_DISABLE_PROMPT=true

# Compose PROMPT
PROMPT=''
PROMPT="$PROMPT"'$(spaceship_build_prompt) '
[[ $SPACESHIP_PROMPT_SEPARATE_LINE == true ]] && PROMPT="$PROMPT$NEWLINE"
PROMPT="$PROMPT"'$(spaceship_return_status) '

# Set PS2 - continuation interactive prompt
PS2="%{$fg_bold[yellow]%}"
PS2+="%{$SPACESHIP_PROMPT_SYMBOL%} "
PS2+="%{$reset_color%}"

# LSCOLORS
# Zsh to use the same colors as ls
# Link: http://superuser.com/a/707567
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
