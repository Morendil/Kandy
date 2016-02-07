require 'nexmo'
require 'sinatra'
require './lib/reply'
 
get '/sms' do
	reply_text = reply_for params
	nexmo = Nexmo::Client.new
	nexmo.send_message(from:'Kandy', to: params[:msisdn], text: reply_text)
end