class NewUserEmailMailer < ApplicationMailer
  def notify_user
    @students = params[:students]
    mail(to: @students.email, subject: 'Welcome')
  end
end
