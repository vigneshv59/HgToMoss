# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hg_to_moss/version'

Gem::Specification.new do |spec|
  spec.name          = "hg_to_moss"
  spec.version       = HgToMoss::VERSION
  spec.authors       = ["Vignesh"]
  spec.email         = ["vigneshv@gmail.com"]

  spec.summary       = %q{A utility that takes files on hypergrade and checks them for plagiarism through MOSS.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["hg_to_moss"] 
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency "minitest"

  spec.add_dependency 'nokogiri', "1.6.8"
  spec.add_dependency 'trollop'
  spec.add_dependency 'moss_ruby'
end
