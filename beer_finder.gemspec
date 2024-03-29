lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "beer_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "beer_finder"
  spec.version       = BeerFinder::VERSION
  spec.authors       = ["Adam Schonely"]
  spec.email         = ["aschonely@gmail.com"]

  spec.summary       = %q{Displays a list of breweies through Open Brewery DB API.}
  spec.description   = %q{CLI program for navigating breweries through Open Brewery DB API.}
  spec.homepage      = "https://github.com/aschonely83/beer_finder"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aschonely83/beer_finder"
  spec.metadata["changelog_uri"] = "https://github.com/aschonely83/beer_finder"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  spec.executables   = ["beer_finder"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "httparty", "~> 0.17.0"
end
