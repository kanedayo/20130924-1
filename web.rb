# coding: utf-8
require 'sinatra'
require "sinatra/reloader" if development?
require 'haml'

set :haml, {:format => :html5 }

configure :development do
  Slim::Engine.set_default_options :pretty => true
end

get '/' do
    name = ENV['NAME']
    @message = "Hello, " << name
    haml:HelloWorld
end