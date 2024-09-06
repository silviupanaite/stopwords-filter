require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development, :test)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = 'stopwords filters'
  gem.homepage = 'http://github.com/brenes/'
  gem.license = 'MIT'
  gem.summary = 'Snowball based filters for stopwords'
  gem.description = 'Small library that allows you to create a simple stopwords filter or use some based on Snowball stopwords lists'
  gem.email = 'silviu.panaite@gmail.com'
  gem.authors = ['Silviu Panaite']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec
