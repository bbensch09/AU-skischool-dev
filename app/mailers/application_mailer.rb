class ApplicationMailer < ActionMailer::Base
  default from: 'bbensch@gmail.com',
    cc: 'bbensch@gmail.com'
  layout 'mailer'
end
