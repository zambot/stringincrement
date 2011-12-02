# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stringincrement/version"

Gem::Specification.new do |s|
  s.name        = "stringincrement"
  s.version     = Stringincrement::VERSION
  s.authors     = ["Jan"]
  s.email       = ["jan@kopfmaschine.com"]
  s.homepage    = ""
  s.summary     = %q{smartly increases a stringvalue}
  s.description = %q{a => b, azzz => baaa, aa11 => aa12, ab99 => ab100}

  s.rubyforge_project = "stringincrement"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
