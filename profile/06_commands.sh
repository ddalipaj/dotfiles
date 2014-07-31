alias e="$TEXT_EDITOR"
alias ls="ls -h"

function remove_whitespaces {
  find * -type f \( -name '*.rb' -o -name '*.js' -o -name "*.erb" -o -name "*.haml" \) -print -exec perl -pi -e 's/[\t ]+$//g' {} \;
}

function killruby {
  pgrep '^ruby*' | xargs kill -9
}