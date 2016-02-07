require 'nexmo'
require 'sinatra'
require './lib/reply'
 
[ :get, :post ].each do |method|
  send method, '/sms' do 
    return unless params[:msisdn]
    reply_text = reply_for params
    nexmo = Nexmo::Client.new
    nexmo.send_message(from: ENV.fetch('SMS_SENDER'), to: params[:msisdn], text: reply_text)
  end
end
