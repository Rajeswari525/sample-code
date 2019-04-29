# Download the helper library from https://www.twilio.com/docs/python/install
from datetime import date
from twilio.rest import Client


# Your Account Sid and Auth Token from twilio.com/console
# DANGER! This is insecure. See http://twil.io/secure
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
client = Client(account_sid, auth_token)

notifications = client.notifications.list(
                                         log=1,
                                         message_date_after=date(2009, 7, 6),
                                         limit=20
                                     )

for record in notifications:
    print(record.sid)
