class Binomial < ActiveRecord::Base
	validates :trials, presence: true
	validates :successes, presence: true
	validates :chances, presence: true

	def factorial(x)
		return (1..x).inject(:*)
	end

	def add()
		return factorial(trials) + factorial(successes)
	end
end
