ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  # :enable_starttls_auto => true, # Optional setting
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :domain => "gmail.com", # Set this to your domain is you are using google apps
  :user_name => "user@gmail.com", # This should be your full email address 
  :password => ""
}

ExceptionNotifier.exception_recipients = %w(user@gmail.com) # Where you want the emails to go
ExceptionNotifier.sender_address = %("Exception Notifier" <user@gmail.com>) # Address email is being sent from
ExceptionNotifier.email_prefix = "[ERROR]: "