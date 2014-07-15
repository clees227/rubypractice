startTime = Time.now
maxLength = 0
maxNum = 0
numTo = 1000000
(2..numTo).to_a.each do |num|
	collatzSeq = []
	tempNum = num
	until num == 1
		collatzSeq << num
		num = num.even? ? num/2 : (3*num)+1
	end
	if collatzSeq.length > maxLength
		maxLength = collatzSeq.length
		maxNum = tempNum
		maxSeq = collatzSeq
	end
end
endTime = Time.now
puts "Answer: #{maxNum}: #{maxLength} long"
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"