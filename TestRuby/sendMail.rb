require 'net/smtp'

message = <<MESSAGE_END
From: Private Person <me@fromdomain.com>
To: A Test User <test@todomain.com>
Subject: SMTP e-mail test

This is a test e-mail message from Ruby SMTP.
MESSAGE_END

begin
  Net::SMTP.start('smtp.garmin.com', 25, 'localhost') do |smtp|
    smtp.send_message message, 'peter.zhang@garmin.com', 
                             'peterzh@gmail.com'
  end
  
rescue Exception => e
  puts "Email exception. #{e.message} #{e.backtrace}"
ensure
  puts "Already tried to send"
  
end


message = <<MESSAGE_END
From: Private Person <me@fromdomain.com>
To: A Test User <test@todomain.com>
MIME-Version: 1.0
Content-type: text/html
Subject: SMTP HTML e-mail test

This is an e-mail message to be sent in HTML format

<b>This is HTML message.</b>
<h1>This is headline.</h1>
MESSAGE_END

  Net::SMTP.start('smtp.garmin.com', 25, 'localhost') do |smtp|
    smtp.send_message message, 'peter.zhang@garmin.com', 
                             'peterzh@gmail.com'
  end

