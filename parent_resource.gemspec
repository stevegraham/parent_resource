# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{parent_resource}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steve Graham"]
  s.date = %q{2009-12-07}
  s.description = %q{Infers a "parent" resource for nested resources from the url path.}
  s.email = %q{sjtgraham@mac.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/parent_resource.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/parent_resource.rb", "parent_resource.gemspec"]
  s.homepage = %q{http://github.com/stevegraham/parent_resource}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Parent_resource", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{parent_resource}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Infers a "parent" resource for nested resources from the url path.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
