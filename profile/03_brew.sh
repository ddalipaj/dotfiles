export PATH="`brew --prefix`/bin:$PATH:/usr/local/sbin"
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi