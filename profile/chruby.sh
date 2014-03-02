if [[ -e /usr/local/share/chruby ]]; then
  # Load chruby
  source `brew --prefix`/share/chruby/chruby.sh
  chruby ruby-2.1.0
  # Automatically switch rubies
  source `brew --prefix`/share/chruby/auto.sh
fi