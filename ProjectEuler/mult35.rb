nums = (1...1000).to_a.select{|num| num % 3 == 0 || num % 5 == 0}
tot = 0
nums.each{|i| tot+=i}
puts tot