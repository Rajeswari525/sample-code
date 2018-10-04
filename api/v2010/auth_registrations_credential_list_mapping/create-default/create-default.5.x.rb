# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

auth_registrations_credential_list_mapping = @client.sip
  .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
  .auth
  .registrations
  .credential_list_mappings
  .create(credential_list_sid: 'CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')

puts auth_registrations_credential_list_mapping.sid
