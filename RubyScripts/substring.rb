dictionary = ["Below", "down", "go", "going", "horn", "how","howdy","it","i","low","own","part","partner", "sit"]
word = "Howdy partner, sit down! How's it going?"
def substrings(array, string)
	new_array = []
	array.each{|w| new_array << w.downcase}
	string.downcase!
	result = Hash.new(0)
	new_array.each do |dictWord|
	result[dictWord] = string.scan(dictWord).length unless string.scan(dictWord).length == 0
	end
	return result
end
puts "Enter in dictionary words seperated by commas"
input = gets.chomp
puts "Enter in word to look for substrings"
input2 = gets.chomp
new_hash = substrings(input.split(","), input2)
new_hash.each{|key, value| puts "#{key} : #{value}"}