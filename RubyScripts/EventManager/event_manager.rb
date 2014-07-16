#Tutorial from http://tutorials.jumpstartlab.com/projects/eventmanager.html
#cant install gem for now
require "csv"
def clean_zipcode(zipcode)
  zipcode.to_s.rjust(6,"0")[0..4]
end
if(not File.exist? "event_attendees.csv")
	puts "File Not Found"
else
	puts "EventManager initialized"
	contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
	contents.each do |row|
		name = row[:first_name]
		zipcode = clean_zipcode(row[:zipcode])
		puts "#{name}: #{zipcode}"
	end
end