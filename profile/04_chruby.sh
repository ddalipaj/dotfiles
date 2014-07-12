if [[ -e `brew --prefix`/share/chruby ]]; then
  # Load chruby
  source `brew --prefix`/share/chruby/chruby.sh
  chruby ruby-2.1.2
  # Automatically switch rubies
  source `brew --prefix`/share/chruby/auto.sh
fi

function install_basic_gems () {
  for i in `chruby` ; do
    chruby-exec $i -- gem install awesome_print pry-meta pry-doc pry-nav;
    chruby-exec $i -- gem install bundler;
  done
}

eval "$(direnv hook $0)"


