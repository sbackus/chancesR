class Poisson < ActiveRecord::Base
	validates :occurances, presence: true
	validates :lambda, presence: true

	def factorial(x)
		return (1..x).inject(:*)
	end

	def poisson_distribution()
		return (lambda ** occurances) / (((2.71828) ** lambda) * factorial(occurances))
	end
end
