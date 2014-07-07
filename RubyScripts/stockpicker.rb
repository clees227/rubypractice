def stock_picker(array)
	index1 = 0
	index2 = 0
	profit = 0
	array[0...-1].each_with_index do |stock, i|
		array[i..-1].each_with_index do |stock1, i2|
			if stock1-stock > profit
				profit = stock1-stock
				index1 = i
				index2 = i2+1
			end
		end
	end
	return [index1,index2]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])