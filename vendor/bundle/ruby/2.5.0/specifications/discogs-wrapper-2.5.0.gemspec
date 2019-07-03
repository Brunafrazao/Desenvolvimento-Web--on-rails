# -*- encoding: utf-8 -*-
# stub: discogs-wrapper 2.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "discogs-wrapper".freeze
  s.version = "2.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Buntine".freeze, "Many more contributors - see https://github.com/buntine/discogs/graphs/contributors".freeze]
  s.date = "2019-04-12"
  s.description = "Discogs::Wrapper is a full wrapper for the http://www.discogs.com API V2. Supports authentication, pagination, JSON.".freeze
  s.email = "info@bunts.io".freeze
  s.homepage = "https://www.github.com/buntine/discogs".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Discogs::Wrapper is a full wrapper for the http://www.discogs.com API V2".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3"])
      s.add_development_dependency(%q<simplecov>.freeze, ["= 0.7.1"])
      s.add_runtime_dependency(%q<hashie>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.14"])
      s.add_runtime_dependency(%q<oauth>.freeze, ["~> 0.5.1"])
    else
      s.add_dependency(%q<pry>.freeze, ["~> 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.3"])
      s.add_dependency(%q<simplecov>.freeze, ["= 0.7.1"])
      s.add_dependency(%q<hashie>.freeze, ["~> 3.0"])
      s.add_dependency(%q<httparty>.freeze, ["~> 0.14"])
      s.add_dependency(%q<oauth>.freeze, ["~> 0.5.1"])
    end
  else
    s.add_dependency(%q<pry>.freeze, ["~> 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.3"])
    s.add_dependency(%q<simplecov>.freeze, ["= 0.7.1"])
    s.add_dependency(%q<hashie>.freeze, ["~> 3.0"])
    s.add_dependency(%q<httparty>.freeze, ["~> 0.14"])
    s.add_dependency(%q<oauth>.freeze, ["~> 0.5.1"])
  end
end
