# Encoding: utf-8

require 'bundler/setup'

require File.join(File.dirname(__FILE__), 'lib/app')
run App::Server
