class Integer
	def addDigits
		num = self.to_s
		tot = 0
		num.each_char do |char|
			tot += char.to_i
		end
		return tot
	end
end

startTime = Time.now
max = 0
1.upto(100).each do |a|
	1.upto(100).each do |b|
		max = (a ** b).addDigits > max ? (a ** b).addDigits : max
	end
end
endTime = Time.now
puts "Answer: #{max}"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"

