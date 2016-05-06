class ApplicationMailer < ActionMailer::Base
  default from: 'farefeedback16@gmail.com',
    cc: 'farefeedback16@gmail.com'
  layout 'mailer'
end
