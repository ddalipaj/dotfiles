alias dns="sudo killall -HUP mDNSResponder"
alias ls="ls -h"
alias cardo="sudo /usr/bin/cardo-updater"

function remove_whitespaces {
  find * -type f \( -name '*.rb' -o -name '*.js' -o -name "*.erb" -o -name "*.haml" \) -print -exec perl -pi -e 's/[\t ]+$//g' {} \;
}

function killruby {
  pgrep '^ruby*' | xargs kill -9
}