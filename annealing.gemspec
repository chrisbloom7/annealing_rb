# frozen_string_literal: true

require_relative 'lib/annealing/version'

Gem::Specification.new do |spec|
  spec.name          = 'annealing'
  spec.version       = Annealing::VERSION
  spec.authors       = ['Luis Ezcurdia Razo']
  spec.email         = ['ing.ezcurdia@gmail.com']
  spec.license       = 'MIT'

  spec.summary       = 'Simulated Annealing algoritm'
  spec.description   = 'Simulated Annealing algoritm implementation.'
  spec.homepage      = 'https://github.com/3zcurdia/annealing'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/3zcurdia/annealing'
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'ruby-prof', '~> 1.4', '>= 1.4.3'
end
