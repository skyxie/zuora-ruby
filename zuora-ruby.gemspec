# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zuora-ruby/version'

Gem::Specification.new do |gem|
  gem.name          = "zuora-ruby"
  gem.version       = Zuora::Ruby::VERSION
  gem.authors       = ["Tian Xie"]
  gem.email         = ["tian@animoto.com"]
  gem.description   = %q{Library to access Zuora API in ruby}
  gem.summary       = %q{Library build from the Zuora SOAP wsdl to access their API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency("soap4r")
  gem.add_dependency("activesupport")
end
