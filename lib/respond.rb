require 'twilio-ruby'
require 'sinatra'
require './lib/reply'
 
get '/sms' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message (reply_for params)
  end
  twiml.text
end