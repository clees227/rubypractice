class Array
	def removeInstancesOf(element)
		until not self.include?(element)
			self.delete(element)
		end
		self
	end
end

array = [1,1,1,2,3,4,5,2,5,2]
puts array.join("_")
puts array.removeInstancesOf(2).join("_")