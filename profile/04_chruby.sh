if [ -f /usr/local/bin/brew ]; then
	if [[ -e `brew --prefix`/share/chruby ]]; then
	  # Load chruby
	  source `brew --prefix`/share/chruby/chruby.sh
	  chruby ruby-2.1.2
	  # Automatically switch rubies
	  source `brew --prefix`/share/chruby/auto.sh
	fi
fi

function install_basic_gems () {
  for i in `chruby` ; do
    chruby-exec $i -- gem install awesome_print pry-meta pry-doc pry-nav;
    chruby-exec $i -- gem install bundler;
  done
}

if [ -f /usr/local/bin/direnv ]; then
	eval "$(direnv hook $0)"
fi