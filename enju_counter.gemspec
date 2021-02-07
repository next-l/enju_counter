require_relative "lib/enju_counter/version"

Gem::Specification.new do |spec|
  spec.name        = "enju_counter"
  spec.version     = EnjuCounter::VERSION
  spec.authors     = ["Kosuke Tanabe"]
  spec.email       = ["nabeta@fastmail.fm"]
  spec.homepage    = "https://github.com/next-l/enju_counter"
  spec.summary     = "COUNTER module for Next-L Enju"
  spec.description = "COUNTER module for Next-L Enju"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/next-l/enju_counter"
  spec.metadata["changelog_uri"] = "https://github.com/next-l/enju_counter/CHANGELOG.md"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
end
