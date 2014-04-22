class Binomial < ActiveRecord::Base
	validates :trials, presence: true
	validates :successes, presence: true
	validates :chances, presence: true

	def factorial(x)
		return (1..x).inject(:*)
	end

	def combinations(n, x)
		return factorial(n) / (factorial(n - x) * factorial(x))
	end

	def Binomial_Probability()
		return combinations(trials, successes) * (chances ** successes) * ((1 - chances) ** (trials - successes))
	end

	def Cumulative_Probability()
		total = 0
		(1..successes).each do |s|
			totals += combinations(trials, successes) * (chances ** successes) * ((1 - chances) ** (trials - successes))
			return total
		end
	end
end




