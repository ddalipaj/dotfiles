alias e="$TEXT_EDITOR"
alias ls="ls -h"

function remove_whitespaces {
  find * -type f \( -name '*.rb' -o -name '*.js' -o -name "*.erb" -o -name "*.haml" \) -print -exec perl -pi -e 's/[\t ]+$//g' {} \;
}

function killruby {
  pgrep '^ruby*' | xargs kill -9
}

function mac {
  echo `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`
}

function change_mac {
  sudo ifconfig en0 ether `mac`
}

alias r='cd ; chruby ruby-1.9.3-p484 ; ringleader /Users/tapajos/projects/LivingSocial/ls-dev/config/nginx/ringleader.yml'