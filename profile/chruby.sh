if [[ -e /usr/local/share/chruby ]]; then
  # Load chruby
  source '/usr/local/share/chruby/chruby.sh'
  chruby ruby-2.0.0-p353
  # Automatically switch rubies
  source '/usr/local/share/chruby/auto.sh'
fi