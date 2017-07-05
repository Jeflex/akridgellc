class ApplyMailer < ActionMailer::Base
  default from: 'philliphassoun@gmail.com'
  # Create a contact email function
  def new_apply_email(feedback_params)
    @firstname = feedback_params[:firstname]
    @lastname = feedback_params[:lastname]
    @telephone = feedback_params[:telephone]
    @email = feedback_params[:email]
    @address = feedback_params[:address]
    @landlord = feedback_params[:landlord]
    @landlordnum = feedback_params[:landlordnum]
    @employer = feedback_params[:employer]
    @employername = feedback_params[:employername]
    @employernum = feedback_params[:employernum]
    @income = feedback_params[:income]
    # Initialize the message here
    # mail(to: ["gavargas22@gmail.com","amiramontes3@utep.edu", "jrsanchez10@utep.edu", "melewis@utep.edu", "ammauro@utep.edu", "aims@utep.edu"], subject: 'There is a new institution registration pending')
    mail(to: ["*Some Email*", "*Some Email*"], subject: 'Akridge LLC: A new applicant has applied')
  end

end
