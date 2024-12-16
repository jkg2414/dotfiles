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
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
current_time() {
  date +'%a %D %r'
}
setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT="${NEWLINE}%F{magenta}[\$(current_time)] %~\$(parse_git_branch)%f${NEWLINE}"

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.2.2
