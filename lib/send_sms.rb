require 'twilio-ruby'

account_sid = 'AC87730a508e91303331d30fadb7e6d46f'
auth_token = '0c8e2d2b1568695819c110396bf51c4c'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+447723455683' # Your Twilio number
to = '+447375074831' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)
