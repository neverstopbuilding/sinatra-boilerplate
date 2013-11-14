# Encoding: utf-8

require 'slim'
require 'sinatra'

module App
  class Server < Sinatra::Base

    set :root, File.expand_path(File.join(Dir.pwd, 'lib'))

    get '/' do
      slim :index
    end

  end
end
