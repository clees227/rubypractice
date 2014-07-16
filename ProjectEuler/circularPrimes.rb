#Problem 35
#Still needs to be done
require 'Prime'
startTime = Time.now
circPrimes = (2..100).to_a.select do |num|
	nums = []
	numStr = num.to_s
	nums << num
	(numStr.length-1).times do |i|
		numStr = numStr[2..-1]+numStr[0..1]
		nums << numStr.to_i
	end
	nums.all?{|n| n.prime?}
	puts "Nums: #{nums.join(" ")}"
end
puts circPrimes
endTime = Time.now
puts "Answer: #{circPrimes.length}"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"