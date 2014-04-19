class Binomial < ActiveRecord::Base
	def factorial(x)
		return (1..x).inject(:*)
	end
end
