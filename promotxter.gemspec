
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "promotxter/version"

Gem::Specification.new do |spec|
  spec.name          = "promotxter"
  spec.version       = Promotxter::VERSION
  spec.authors       = ["Cecille Sevilla", "Andrey Ramirez", "Jett Robin Andres"]
  spec.email         = ["cecillegsevilla01@gmail.com", "jettrobin.andres@gmail.com", "ramirez.jag00@gmail.com"]

  spec.summary       = %q{Library for accessing promotexter SMS API in Ruby.}
  spec.homepage      = "https://github.com/scrambledeggs/promotxter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "dotenv", "~> 2.5.0"
  spec.add_development_dependency "webmock", "~> 3.4.2"

end
