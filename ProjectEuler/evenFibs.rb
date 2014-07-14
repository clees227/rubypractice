def makeFibs
	n = 1
	n1 = 1
	fibs = [n,n1]
	n2=0
	while n2 < 4000000
		n2 = n + n1
		fibs << n2
		n = n1
		n1 = n2
	end
	return fibs
end

fibs = makeFibs
evenFibs = fibs.select{|num| num.even?}
tot = 0
evenFibs.each{ do |i| tot+=i}
puts tot
