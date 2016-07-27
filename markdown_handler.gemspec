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
  s.homepage      = "https://github.com/thomascullen/rails_markdown_handler"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0"
  s.add_dependency "redcarpet", "~> 3.3"
  s.add_dependency "pygments.rb", "~> 0.6"

  s.add_development_dependency "sqlite3"
end
