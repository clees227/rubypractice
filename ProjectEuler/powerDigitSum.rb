startTime = Time.now
sum = 0
power = 1000
numString = (2 ** power).to_s
numString.each_char do |i|
	sum+= i.to_i
end
endTime = Time.now
puts "Answer: #{sum}"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"