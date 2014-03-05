alias p="cd $PROJECTS_PATH"

function update_all {
  CURRENT_PATH=`pwd`
  source $HOME/dotfiles/profile/chruby.sh
  cd $PROJECTS_PATH
  for i in $(find . -type d); do
    if [ -d "$i/.git" ]; then
      echo -e "\033[1mPulling "$i"\033[0m"
      cd "$i"
      # pull repos without local changes
      if git diff-index --quiet HEAD --; then
        git pull --rebase --quiet > /dev/null
        if [ -e Gemfile ]; then
          echo -e "\033[1m'Bundling' "$i"\033[0m"
          bundle --local --quiet > /dev/null
        fi
        git remote prune origin > /dev/null
        git gc --quiet > /dev/null
      fi
      cd - > /dev/null
    fi
  done
  cd $CURRENT_PATH
  unset CURRENT_PATH
}

function truncate_logs {
  for item in $(find $PROJECTS_PATH -name '*.log' -type f) ;do cat /dev/null > $item ;done
  for item in $(find `brew --prefix`/var/log -name '*.log' -type f) ;do cat /dev/null > $item ;done
}