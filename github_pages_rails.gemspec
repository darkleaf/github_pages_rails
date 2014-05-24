$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "github_pages_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "github_pages_rails"
  s.version     = GithubPagesRails::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of GithubPagesRails."
  s.description = "TODO: Description of GithubPagesRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "octokit", "~> 3.0"
  s.add_dependency "redcarpet", "~> 3.1.2"
end
