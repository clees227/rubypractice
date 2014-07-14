require 'Prime'
def makePrimes(num)
	#Ruby is great :) yay library functions
	array =  Prime::EratosthenesGenerator.new.take_while{|i| i <= num}
end

array = makePrimes(2000000)
tot = 0
array.each{|i| tot+= i}
puts tot