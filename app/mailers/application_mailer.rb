class ApplicationMailer < ActionMailer::Base
  default from: 'sharetheeconomy@gmail.com',
    cc: 'sharetheeconomy@gmail.com'
  layout 'mailer'
end
