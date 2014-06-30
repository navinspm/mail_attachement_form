class UserMailer < ActionMailer::Base
  def registration_confirmation(user)
  	@user=user
 
  	 attachments.inline["#{user.image_identifier}"]=File.read("public#{user.image.to_s}")
  	mail(:to => user.mail, :subject=> "Registered",  :from => "navinkumar.ideology@gmail.com")
  end
end
