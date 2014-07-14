require 'prime'
#Finds if the number is divisable by 1-20 or not
def divAll?(num)
	(1..20).to_a.each do |i| 
		if num % i != 0 
			return false
		end
	end
	true
end
num = 1
findDiv =false
#Really inefficient might come back and fix
until findDiv == true do
	if(divAll?(num))
		findDiv = true
		puts num
	end
	num+= 1
end




