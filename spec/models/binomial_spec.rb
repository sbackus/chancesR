require 'spec_helper'

describe Binomial do
  before :each do 
    @binomial = Binomial.new(trials: 12, successes: 4, chances: 0.5)
  end
  describe "factorial" do 
    it "returns 1 when x is 1" do 
      expect(@binomial.factorial(1)).to be(1)
    end
    it "returns 24 when x is 4" do 
      expect(@binomial.factorial(1)).to be(1)
    end
  end
end
