require 'sinatra'
require './lib/respond'

ActiveRecord::Base.configurations = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection

get '/' do
  'Hello world!'
end
