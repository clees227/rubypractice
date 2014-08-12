class Integer
	def numRelPrime
		tot = 0
		1.upto(self-1).each do |i|
			tot += self.gcd(i) == 1 ? 1 : 0
		end
		return tot
	end
	def totient
		self.to_f/self.numRelPrime
	end
end

startTime = Time.now
max = 0
maxTotient = 0
1.upto(1000000).each do |i|
	if i.totient > maxTotient
		maxTotient = i.totient
		max = i
	end
end

endTime = Time.now
puts "Answer: #{max}"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"