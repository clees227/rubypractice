require 'mail'	
mail = Mail.new do
	from "test@test.com"
	to "mpamff22@gmail.com"
	subject 'woop'
	body "Hello Colin"
end
puts "Sending!"
mail.delivery_method :sendmail

mail.deliver
puts "Done Sending!"