set_git_work() {
  if [ "$PWD" != "$MYOLDPWD" ]; then
    MYOLDPWD="$PWD";
    if [ -d ".git" ]; then
      if [ `echo "$MYOLDPWD" | grep 'LivingSocial'` ] ; then
        git config user.email "marcos.tapajos@livingsocial.com"
      fi
    fi
  fi
}

export PROMPT_COMMAND=set_git_work
