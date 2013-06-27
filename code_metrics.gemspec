$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "code_metrics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "code_metrics"
  s.version     = CodeMetrics::VERSION
  s.authors     = ["Benjamin Fleischer"]
  s.email       = ["dev@benjaminfleischer.com"]
  s.homepage    = "https://github.com/bf4/code_statistics"
  s.summary     = "Extraction of the rails rake stats task as a gem and rails plugin"
  s.description = "rake stats is great for looking at statistics on your code, displaying things like KLOCs (thousands of lines of code) and your code to test ratio."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
