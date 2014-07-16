#Problem 30
startTime = Time.now
total = 0
totNums = 0
nums = []
#Honestly, the bounds were guess and check
(2...300000).to_a.each do |num|
	sum = 0
	num.to_s.each_char {|c| sum += (c.to_i ** 5)}
	if sum == num
		totNums += 1
		nums << num
	end
end
nums.each{|i| total += i}
endTime = Time.now
puts "Answer: Total Nums : #{totNums} Total : #{total}"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"