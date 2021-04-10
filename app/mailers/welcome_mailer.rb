class WelcomeMailer < ApplicationMailer
  default from: '管理者のメールアドレス'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'welcome to my family!')
  end
end
