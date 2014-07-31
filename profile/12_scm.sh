alias gbl="git branch"
alias gb="git branch -a"
alias gc="git commit -a"
alias gd="git diff | mate"
alias gl="git pull"
alias rgl="git pull --rebase"
alias gp="git push"
alias gta="git status"
alias gr="git reset --hard"
alias grc="git remote prune origin"
alias ga="git add ."
alias gm="git checkout master"


if [[ -z "$GIT_USER_NAME" ]]
	git config user.name $GIT_USER_NAME
fi

if [[ -z "$GIT_USER_EMAIL" ]]
	git config user.email $GIT_USER_EMAIL
fi
