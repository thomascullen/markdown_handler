$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "markdown_handler/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "markdown_handler"
  s.version     = MarkdownHandler::VERSION
  s.authors     = ["Thomas Cullen"]
  s.email       = ["thomascullen92@gmail.com"]
  s.summary     = "Rails markdown template handler"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "redcarpet"
  s.add_dependency "pygments.rb"

  s.add_development_dependency "sqlite3"
end
