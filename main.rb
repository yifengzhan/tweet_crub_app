     
require 'sinatra'

# if development?
# require 'sinatra/reloader'
# end
require 'sinatra/reloader' if development?
require 'pry' if development?


require_relative 'db/db'





get '/' do
  'hello world'
end





