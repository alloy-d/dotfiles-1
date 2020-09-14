function fish_right_prompt
  set_color $fish_color_autosuggestion ^/dev/null; or set_color 555
  date "+%H:%M:%S"
  set_color normal
end

# aliases

alias b="bundle"
alias be="bundle exec"
alias c="clear"
alias dkrmall="sudo docker rm (sudo docker ps -a -q)"
alias gaac="git add .; and git commit"
alias gitcleanbranches="git branch --merged | grep -v master | xargs git branch -D"
alias gitreallycleanbranches="git branch | grep -v 'master' | xargs git branch -D"
alias grb="git rebase -i origin/master"
alias grbc="git rebase --continue"
alias grep="grep --color --exclude=\"*/coverage/*\" --exclude=\"*.git/*\""
alias la="ls -la"
alias mkdir="mkdir -p"
alias npmi="npm install"
alias psqlapp="'/Applications/Postgres.app/Contents/Versions/9.5/bin'/psql -p5432"
alias rcup="env RCRC=~/.dotfiles/.rcrc rcup"
alias rst="touch tmp/restart.txt"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias tl="tmux ls"

# functions

function mkdircd
  mkdir -p $argv; and cd $argv
end

function npms
  npm install -SE $argv
end

function npmsd
  npm install --save-dev -E $argv
end

function mixnew
  mix new $argv; and cd $argv
end

function phnew
  mix phoenix.new $argv; and cd $argv
end

# set iex/erlang history var
#set -Ux ERL_AFLAGS "-kernel shell_history enabled"

# ASDF
source $HOME/.asdf/asdf.fish

eval (direnv hook fish)

set -g fish_user_paths "$HOME/.bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/foz/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/foz/Downloads/google-cloud-sdk/path.fish.inc'; end
