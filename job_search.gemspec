require_relative 'lib/job_search/version'

Gem::Specification.new do |spec|
  spec.name          = "job_search"
  spec.version       = JobSearch::VERSION
  spec.authors       = "dfragosa"
  spec.email         = "54610360+dfragosa@users.noreply.github.com"

  spec.summary       =  "Simple Ruby CLI app"
  spec.description   = "School project Use API data to get list of programming jobs"
  spec.homepage      = "https://github.com/dfragosa/job_search.git"
  spec.required_ruby_version = Gem::Requirement.new ">= 2.3.0"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dfragosa/job_search.git"
  spec.metadata["changelog_uri"] = "https://github.com/dfragosa/job_search.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", ">= 1.17"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "httparty", "~> 0.17.0"
  
end
