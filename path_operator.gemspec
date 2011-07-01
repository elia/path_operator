# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'path_operator/version'

Gem::Specification.new do |s|
  s.name        = 'path_operator'
  s.version     = PathOperator::VERSION
  s.authors     = ['Elia Schito']
  s.email       = ['perlelia@gmail.com']
  s.homepage    = ''
  s.summary     = %q{Adds the / operator to String, Symbol and Pathname}
  s.description = %q{Adds the / operator to String, Symbol and Pathname}
  s.license     = 'MIT'

  s.rubyforge_project = 'path_operator'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
