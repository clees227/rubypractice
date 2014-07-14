def sumSquareTo(num)
	tot = 0
	(1..num).to_a.each{|i| tot+= i ** 2}
	return tot
end

def sumThenSquareTo(num)
	tot = 0
	(1..num).to_a.each{|i| tot+= i}
	return tot ** 2
end

num = 100
puts sumThenSquareTo(num)-sumSquareTo(num)