export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function setBackground() {
  echo -e "\033]Ph${1}\033\\"
}
alias setBlackBackground='setBackground 000000'
