alias migrar="rake db:migrate db:test:prepare"

function rake {
  if [ -e Gemfile ]; then
    time bundle exec rake $@
  else
    time `which rake` $@
  fi
}

function cap {
  if [ -e Gemfile ]; then
    time bundle exec cap $@
  else
    time `which cap` $@
  fi
}

function rspec {
  if [ -e Gemfile ]; then
    time bundle exec rspec $@
  else
    time `which rspec` $@
  fi
}

function fs {
  bundle exec foreman start -f Procfile $@
}

function s {
  if [ -e script/rails ]; then
    script/rails server $@
  else
    script/server $@
  fi
}

function c {
  if [ -e script/rails ]; then
    script/rails console $@
  else
    script/console $@
  fi
}

function g {
  if [ -e script/rails ]; then
    script/rails generate $@
  else
    script/generate $@
  fi
}