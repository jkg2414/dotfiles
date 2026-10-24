eval "$(/opt/homebrew/bin/brew shellenv)"

source <(fzf --zsh)

alias ls='ls -GhAlp'
alias cd='pushd'
alias pd='popd'
alias cddesktop='pushd ~/Desktop/'
alias cddocuments='pushd ~/Documents/'
alias cddownloads='pushd ~/Downloads/'
alias ev='vim ~/.vimrc'
alias eg='vim ~/.gitconfig'
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias dsstore='find . -name .DS_Store -type f -delete'

alias history='history -i 0 | less +G'
alias rmimages='docker rmi -f $(docker images -aq)'
alias rmcontainers='docker rm -f $(docker ps -aq)'
alias rmvolumes='docker volume rm $(docker volume ls -q)'
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

parse_git_branch() {
  local branch sha
  branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  [[ -z $branch ]] && return
  sha=$(git rev-parse --short HEAD 2> /dev/null)
  echo " (${branch}${sha:+ $sha})"
}
current_time() {
  date +'%a %D %r'
}
setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT="${NEWLINE}%F{magenta}[\$(current_time)] %~/\$(parse_git_branch)%f${NEWLINE}"

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.2.2

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"
