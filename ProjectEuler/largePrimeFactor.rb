require 'prime'
def makePrimes(num)
	#Ruby is great :) yay library functions
	array =  Prime::EratosthenesGenerator.new.take_while{|i| i <= num}
end

num = 600851475143
# Couldn't make an array big enough to hold all the primes. 
# So I just tried to lower that number by dividing by a large number
array = makePrimes((num/1000000).to_i)
div = array.select{|i| num % i == 0}
puts div.last