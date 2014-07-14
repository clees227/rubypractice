module Enumerable
	def my_each
		return self unless blockgiven?
		for name in self
			yield (name)
		end
	end

	def my_each_with_index
		return self unless blockgiven?
		int i=0
		for name in self
			yield (name, i)
			i += 1
		end
	end