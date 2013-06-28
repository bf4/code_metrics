$:.push File.expand_path("../lib", __FILE__)

require "code_metrics/version"

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "code_metrics"
  s.version     = CodeMetrics::VERSION
  s.author      = "David Heinemeier Hansson"
  s.email       = "david@loudthinking.com"
  s.homepage    = "https://github.com/bf4/code_metrics"
  s.summary     = "Extraction of the rails rake stats task as a gem and rails plugin"
  s.description = "rake stats is great for looking at statistics on your code, displaying things like KLOCs (thousands of lines of code) and your code to test ratio."

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.license = 'MIT'
  s.require_paths = ["lib"]

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.executables   =  Dir['bin/*'].map{ |f| File.basename(f) }
  s.default_executable = "code_metrics"

  s.add_development_dependency "rails", ["> 3.0", "< 5.0"]

  s.add_development_dependency "sqlite3"
end
