# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

auth_calls_credential_list_mapping = @client.sip
  .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
  .auth
  .calls
  .credential_list_mappings('CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
  .fetch

puts auth_calls_credential_list_mapping.friendly_name
