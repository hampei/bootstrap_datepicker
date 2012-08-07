# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bootstrap_datepicker"
  s.version = "0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alberto Pastor", "Derek Willian Stavis"]
  s.date = "2012-08-07"
  s.description = "View helper that allows to select dates from a calendar (using jQuery and Twitter Bootstrap styles)"
  s.email = "dekestavis@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "lib/app/helpers/datepicker_helper.rb", "lib/app/helpers/form_helper.rb", "lib/bootstrap_datepicker.rb"]
  s.files = ["README.rdoc", "Rakefile", "init.rb", "bootstrap_datepicker.gemspec", "lib/app/helpers/datepicker_helper.rb", "lib/app/helpers/form_helper.rb", "lib/bootstrap_datepicker.rb", "lib/engine.rb", "vendor/assets/javascripts/bootstrap-datepicker.js", "vendor/assets/javascripts/index.js", "vendor/assets/stylesheets/datepicker.css", "vendor/assets/stylesheets/datepicker.less"]

  s.homepage = "http://github.com/derekstavis/bootstrap_datepicker"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Bootstrap_datepicker", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "bootstrap_datepicker"
  s.rubygems_version = "1.8.10"
  s.summary = "View helper that allows to select dates from a calendar (using jQuery and Twitter Bootstrap styles)"
  s.add_dependency "twitter-bootstrap-rails", "~> 2.1.1"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
