class BinomialsController < ApplicationController
  def new
  	@binomial = Binomial.new
  end

  def create
  	@binomial = Binomial.new(binomial_params)
    if Binomial.count > 6
      @old_binomial = Binomial.first
      @old_binomial.destroy
    end

  	if @binomial.save
  		redirect_to @binomial
  	else
      flash[:notice] = "You have blank fields. "
  		render 'new'
  	end
  end

  def show
  	@binomial = Binomial.find(params[:id])

  	#@answer = Binomial.
  end

  def index
  	@binomials = Binomial.all
  end

  def destroy

  end

  private
  	def binomial_params
  		params.require(:binomial).permit(:trials, :successes, :chances)
  	end
end
