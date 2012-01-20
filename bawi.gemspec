$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bawi/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bawi"
  s.version     = Bawi::VERSION
  s.authors     = ["Joon Lee"]
  s.email       = ["seouri@gmail.com"]
  s.homepage    = "https://github.com/bawi/bawi-engine"
  s.summary     = "Ruby on Rails mountable engine for forum."
  s.description = "Ruby on Rails mountable engine for forum."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
end
