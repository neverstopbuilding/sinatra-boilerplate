# Encoding: utf-8

require 'slim'
require 'sinatra'
require 'sinatra/config_file'

module App
  class Server < Sinatra::Base
    set :root, File.expand_path(File.join(Dir.pwd, 'lib'))

    register Sinatra::ConfigFile

    config_file 'config/config.yml'

    get '/' do
      slim :index
    end
  end
end
