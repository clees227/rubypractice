class String
	def palindrome?()
		self == self.reverse
	end
end

class Fixnum
	def lychrel?()
		tot = self + self.to_s.reverse.to_i
		tot.to_s.palindrome?
	end
end

startTime = Time.now
num = 0
1.upto(10000).each do |i|
	if i.lychrel?
		puts "#{i} + #{i.to_s.reverse} = #{i + i.to_s.reverse.to_i}"
		num += 1
	end
end
endTime = Time.now
puts "Answer: #{num}"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"
