class Coach
	@@list = ['John', 'Seba']

	def self.all
		@@list
	end


	def self.create(name)
		@@list << name
	end
end