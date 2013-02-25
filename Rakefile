# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "i18n_missing_keys"
  gem.homepage = "http://github.com/renuo/i18n_missing_keys"
  gem.license = "MIT"
  gem.summary = %Q{Rake task to find localization keys missing from different locales.}
  gem.description = %Q{Rake task to find localization keys missing from different locales in a Rails application using the I18n::Simple backend.}
  gem.email = "ueli.kunz@renuo.ch"
  gem.authors = ["ideadapt"]
  gem.files = Dir.glob('lib/**/*.rb')
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*.rb'
  test.verbose = true
end

#require 'simplecov'
#Rake::TestTask.new(:test) do |test|
#  #SimpleCov.command_name 'test:units'
#  SimpleCov.start do
#    add_filter 'i18n_'
#  end
#  test.libs << 'lib' << 'test'
#  test.pattern = 'test/**/*.rb'
#  test.verbose = true
#end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "i18n_missing_keys #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rake')
end
