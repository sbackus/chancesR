class BinomialsController < ApplicationController
  def new
  	@binomial = Binomial.new
  end

  def create
  	@binomial = Binomial.new(binomial_params)

  	if @binomial.save
  		redirect_to @binomial
  	else
  		render 'new'
  	end
  end

  def show
  	@binomial = Binomial.find(params[:id])

  	#@answer = Binomial.factorial(binomial_params)
  end

  def index
  	@binomial = Binomial.all
  end

  def edit
  end

  private
  	def binomial_params
  		params.require(:binomial).permit(:trials, :successes, :chances)
  	end
end
