# Encoding: utf-8

# require 'rack'
require 'rspec'
require 'rack/test'
require 'sinatra'
require 'capybara/rspec'
require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run_excluding skip: true
  config.filter_run :focus
  config.order = 'random'

  config.expect_with :rspec, :stdlib
  config.include Rack::Test::Methods
  config.include Capybara::DSL
end

require_relative '../../lib/app'

Capybara.app = App::Server

puts 'Loaded system testing configuration.'
