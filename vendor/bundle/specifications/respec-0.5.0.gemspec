# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "respec"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["George Ogata"]
  s.date = "2013-03-02"
  s.email = ["george.ogata@gmail.com"]
  s.executables = ["respec"]
  s.files = ["bin/respec"]
  s.homepage = "http://github.com/oggy/respec"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.0"
  s.summary = "Rerun failing RSpec examples easily."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<ritual>, ["~> 0.4.0"])
      s.add_development_dependency(%q<temporaries>, ["~> 0.0.3"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<ritual>, ["~> 0.4.0"])
      s.add_dependency(%q<temporaries>, ["~> 0.0.3"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<ritual>, ["~> 0.4.0"])
    s.add_dependency(%q<temporaries>, ["~> 0.0.3"])
  end
end
