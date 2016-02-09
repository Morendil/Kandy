require 'sinatra'
require './lib/respond'

require './lib/rest_json'
rest_json Applicant

ActiveRecord::Base.configurations = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection

get '/' do
  call env.merge("PATH_INFO" => '/index.html')
end
