class UserMailer < ApplicationMailer
    default from: "notifications@example.com"

  def welcome_email
    @user = params[:user]
    @url  = "http://127.0.0.1:3000/users/new"
    delivery_options = { user_name: params[:user][:smtp_user],
                         password: params[:user][:smtp_password],
                         address: params[:user][:smtp_host] }
    mail(to: @user.email, subject: "Welcome to FormApp", delivery_method_options: delivery_options)
  end
end
