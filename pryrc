Pry.config.editor = "mate -w"

Pry.config.should_load_plugins = false
Pry.plugins["doc"].activate!
Pry.plugins["nav"].activate!

Pry.config.history.file = "/Users/tapajos/.irb-history"

Pry.config.prompt = proc do |obj, level, _|
  prompt = ""
  prompt << "#{Rails.version}@" if defined?(Rails)
  prompt << "#{RUBY_VERSION}"
  "#{prompt} (#{obj})> "
end

Pry.config.exception_handler = proc do |output, exception, _|
  output.puts "\e[31m#{exception.class}: #{exception.message}"
  output.puts "from #{exception.backtrace.first}\e[0m"
end

begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "no awesome_print :("
end

Dir["#{ENV['HOME']}/dotfiles/pry_helpers/*"].map {|file| require file }