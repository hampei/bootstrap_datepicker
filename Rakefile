require 'rubygems'
require 'rake'
require 'echoe'
require 'rspec/core/rake_task'

Echoe.new('bootstrap_datepicker', '0.4') do |p|
  p.description    = "View helper that allows to select dates from a calendar (using jQuery and Twitter Bootstrap styles)"
  p.url            = "http://github.com/derekstavis/bootstrap_datepicker"
  p.author         = "Derek Stavis"
  p.email          = "dekestavis@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*", "spec/*"]
  p.development_dependencies = ['twitter-bootstrap-rails']
end

RSpec::Core::RakeTask.new(:spec)
task :default => :spec