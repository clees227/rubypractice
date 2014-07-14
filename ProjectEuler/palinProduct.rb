#Check if the string is a palindrome
def palindrome?(str)
	str == str.reverse
end

#all 3 digit numbers
nums = (100...1000).to_a
products = []
#finding products
nums.each do |i|
	nums.each do |i2|
		products << i*i2
	end
end
#getting the palindromes
palins = products.select{|i| palindrome?(i.to_s)}
#sorting the palindromes and prints the last element
puts palins.sort.last