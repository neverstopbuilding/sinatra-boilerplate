# Encoding: utf-8

require 'slim'
require 'sinatra'
require 'sinatra/config_file'
require 'sinatra/assetpack'

module App
  class Server < Sinatra::Base
    set :root, File.expand_path(File.join(Dir.pwd, 'lib'))

    register Sinatra::ConfigFile
    register Sinatra::AssetPack

    # Configuration
    config_file 'config/config.yml'

    # Assets
    assets do
      serve '/js', from: 'assets/javascripts'
      serve '/css', from: 'assets/stylesheets'
      serve '/img', from: 'assets/images'

      # Javascript placed before the closing <head> tag
      js :head, [
        '/js/head.js'
      ]

      # Javascript placed before the closing <body> tag
      js :tail, [
        '/js/tail.js'
      ]

      css :app, [
        '/css/app.css'
      ]

      js_compression :yui
      css_compression :yui
    end

    get '/' do
      slim :index
    end
  end
end
