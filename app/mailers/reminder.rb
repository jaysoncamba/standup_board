class Reminder < ActionMailer::Base
  default from: "standupboard@indinero.com", to: "makati-devs@indinero.com"

  def items_posted(todos)
  	@todos = todos 
  	mail(subject:"Ticket filed today")
  end

end
