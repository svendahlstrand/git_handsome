# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "git_handsome/version"

Gem::Specification.new do |s|
  s.name        = "git_handsome"
  s.version     = GitHandsome::VERSION
  s.authors     = ["Sven Dahlstrand"]
  s.email       = ["sven.dahlstrand@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Pretty graphs for git repositories.}
  s.description = %q{Pretty graphs for git repositories.}

  s.rubyforge_project = "git_handsome"

  s.add_dependency 'sinatra'
  s.add_dependency 'launchy'
  s.add_dependency 'erubis'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'shotgun'
  s.add_development_dependency 'guard-livereload'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
