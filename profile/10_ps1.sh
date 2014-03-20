COLOR1="\[\033[0;36m\]"
COLOR2="\[\033[0;32m\]"
COLOR3="\[\033[0;36m\]"
COLOR4="\[\033[0;39m\]"

if [ "$UID" = "0" ]; then
  COLOR2="\[\033[1;31m\]"
fi

PS1="$COLOR2($COLOR3\u$COLOR2:$COLOR1\W$COLOR2\$(__git_ps1))$COLOR1\\$ $COLOR4$EOP"
export PS1=$PS1