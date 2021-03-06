# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gemver/version"

Gem::Specification.new do |spec|
  spec.name          = "gemver"
  spec.version       = Gemver::VERSION
  spec.authors       = ["Eugene"]
  spec.email         = ["cuongnm265@gmail.com"]

  spec.summary       = "Gemver!"
  spec.description   = "Simple gem to add latest gem version to your Gemfile without going to rubygems.org"
  spec.homepage      = "http://rubygems.org/gems/gemver"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata = {
      "documentation_uri" => "https://github.com/cuongnm265/gemver",
      "homepage_uri"      => "https://github.com/cuongnm265/gemver",
      "source_code_uri"   => "https://github.com/cuongnm265/gemver",
      "wiki_uri"          => "https://github.com/cuongnm265/gemver"
    }
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
