# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
# DANGER! This is insecure. See http://twil.io/secure
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

worker_channels = @client.taskrouter
                         .workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
                         .workers('WKXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
                         .worker_channels
                         .list(limit: 20)

worker_channels.each do |record|
  puts record.sid
end
