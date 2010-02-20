require 'rubygems' 
SPEC = Gem::Specification.new do |s| 
  s.name = "password"
  s.version = "1.3"
  s.author = "Giles Bowkett"
  s.email = "gilesb@gmail.com"
  s.homepage = "http://gilesbowkett.blogspot.com/2008/02/sudo-gem-install-password.html"
  s.rubyforge_project = "password"
  s.platform = Gem::Platform::RUBY
  s.summary = "Brain-dead simple password storage."
  s.files = Dir.glob("**/*")
  s.executables << "password"
  s.require_path = "lib"
  s.has_rdoc = false 
  s.add_dependency("activesupport", ">= 2.0.2")
end 
