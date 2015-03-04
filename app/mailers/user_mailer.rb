class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "A welcome gift! From Vegan Grocery List"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Mmmm new password"
  end
end