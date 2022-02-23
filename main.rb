     
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'bcrypt'
require 'pg'


enable :sessions

require_relative 'db/db'


require_relative 'models/tweet'
require_relative 'models/user'

require_relative 'controllers/tweets_controller'
require_relative 'controllers/users_controller' 
require_relative 'controllers/sessions_controller'



require_relative 'helpers/sessions_helper'




