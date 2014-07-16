startTime = Time.now
def makeFibs
	n = 1
	n1 = 1
	fibs = [n,n1]
	n2=0
	term = 2
	while n2.to_s.length < 1000
		n2 = n + n1
		fibs << n2
		n = n1
		n1 = n2
		term+=1
	end
	return term
end

puts "Answer: #{makeFibs}"
endTime = Time.now
puts "Start Time: #{startTime}\nEnd Time: #{endTime}\nTotal Time: #{endTime-startTime}"