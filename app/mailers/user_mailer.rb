class UserMailer < ApplicationMailer
  def thank_you_for_snippet(snippet,user)
    @snippet = snippet
    @user = user
    mail(to: @snippet.email, subject: "We appreciate your interest!")
  end

  def new_user_signed_up(user)
    @user = user
    mail(to: "bbensch@gmail.com", subject: "#{user.email} has registered for ShareTheEconomy!")
  end

end
