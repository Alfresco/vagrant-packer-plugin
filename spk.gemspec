require File.expand_path('../lib/vagrant-packer-plugin/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "vagrant-packer-plugin"
  spec.version       = VagrantPlugins::PackerBuild::VERSION
  spec.authors       = ["Enzo Rivello"]
  spec.email         = ["enzo.rivello@alfresco.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.license       = "MIT"

  spec.add_runtime_dependency 'berkshelf', '~> 6.0.1'
  spec.add_runtime_dependency 'json-merge_patch', '~> 1.1'
  spec.add_runtime_dependency 'pry', '~> 0.10.4'
  spec.add_runtime_dependency "packer-config", "~> 1.6.1"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 11.3.0"
  spec.add_development_dependency 'yard', '~> 0.8.7.6'
  spec.add_development_dependency 'rspec', '~> 3.4'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


end
