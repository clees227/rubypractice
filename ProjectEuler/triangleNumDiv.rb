#Project Euler Problem 12
require 'Prime'
class Integer
	def factorsP()
		tot = 1
		self.prime_division.each{|i| tot = tot * (i[1]+1)}
		return tot
	end
end

timeStart = Time.now
numFactors = 500
i = 1
num = 1
loop do 
	break if num.factorsP >= numFactors
	i+=1
	num+=i
end
timeEnd = Time.now
puts "Answer: #{num}"
puts "Time start: #{timeStart}\nTime End: #{timeEnd}\nTotal Time: #{timeEnd-timeStart}"