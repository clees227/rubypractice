def caesarcipher(word, offset)
	result = ""
	word.each_byte do |x|
		new_char_num = x < 65 ? x : (x+offset)
		if (x < 91 && new_char_num > 90)
			new_char_num = 65 + (new_char_num % 91)
		end
		if (x < 123 && new_char_num > 122)
			new_char_num = 97 + (new_char_num % 123)
		end
		result << new_char_num.chr
	end
	return result
end
puts "Enter a string: "
word = gets.chomp
puts "Enter an Offset"
offset = gets.chomp

puts caesarcipher(word,offset.to_i)