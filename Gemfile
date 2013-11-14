# Encoding: utf-8

source 'https://rubygems.org'
ruby '2.0.0'

gem 'sinatra'
gem 'sinatra-contrib', :require => %w(sinatra/config_file)
gem 'thin'

group :presentation do
  gem 'slim'
end

group :test do
end

group :development do
  gem 'rake'
  gem 'rubocop'
  gem 'guard-rubocop'
  gem 'guard-livereload'
  gem 'guard-shotgun', :git => 'git@github.com:rchampourlier/guard-shotgun.git', :branch => 'master'
end
