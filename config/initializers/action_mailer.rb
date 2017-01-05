# ActionMailer email configuration
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:               ENV["smtp_address"],
  port:                  ENV["smtp_port"],
  domain:                ENV["smtp_domain"],
  user_name:             ENV["smtp_user_name"],
  password:              ENV["smtp_password"],
  authentication:        ENV["smtp_authentication"],
  enable_starttls_auto:  true,
  tls:                   true
}
ActionMailer::Base.default_options = {from: 'info@renderapps.io'}
ActionMailer::Base.default_url_options = {host: ENV['action_mailer_host']}