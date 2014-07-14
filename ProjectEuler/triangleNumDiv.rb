require 'Prime'
class Integer
	def factors() 
		(1..self).select{|n| (self % n).zero?}
	end
	def factorsP()
		tot = 1
		array = self.prime_division
		array.each do |i|
			exp = i[1]
			tot = tot * (exp + 1)
		end
		return tot
	end
end

i = 1
num = 1
loop do 
	break if num.factorsP >= 500
	i+=1
	num+=i
end
puts num