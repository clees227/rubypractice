=begin
puts "Enter Fib # you want: "
numTimes = gets.chomp
=end
def printFib(num)
	n1 = 0;
	n2 = 1;
	if num == 1
		return 0;
	elsif num == 2
		return 1;
	else
		n1 = 0;
	    n2 = 1;
		n3 = - 99 
		(num-2).times do |i|
			n3 = n1 + n2
			n1 = n2
			n2 = n3
		end
		return n3
	end
end

#1 line printFibs
def printFibRec(num)
	return num == 1 || num == 2 ? 1 : printFibRec(n-1)+printFibRec(n-2)
end

puts printFib(6)
puts printFib(6)
