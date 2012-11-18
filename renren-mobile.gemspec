# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{renren-mobile}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Huang Xiangdan"]
  s.date = %q{2012-11-18}
  s.description = %q{this gem is an adaptation of John Nunemaker's Twitter gem.  I modified it to make api integration for 新浪微博 (t.sina.com.cn) easier.}
  s.email = %q{xd_huang1986@163.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE",
    "README.rdoc",
    "VERSION",
    "lib/renren-mobile.rb",
    "lib/renren-mobile/base.rb",
    "lib/renren-mobile/config.rb",
    "renren-mobile.gemspec",
  ]
  s.homepage = %q{http://github.com/huangxiangdan/renren-mobile}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{a gem to help api integration for renren-mobile (http://wiki.mobile.renren.com/)}
  
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.5.2"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.6.7"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0.5.2"])
      s.add_dependency(%q<rest-client>, [">= 1.6.7"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0.5.2"])
    s.add_dependency(%q<rest-client>, [">= 1.6.7"])
  end
end
