class PoissonsController < ApplicationController
  def new
  	@poisson = Poisson.new
  end

  def create
	@poisson = Poisson.new(poisson_params)
    if Poisson.count > 5
      @old_poisson = Poisson.first
      @old_poisson.destroy
    end

  	if @poisson.save
  	  redirect_to @poisson
  	else
      flash[:notice] = "You have blank fields. "
  	  render 'new'
  	end
  end

  def show
  	@poisson = Poisson.find(params[:id])
  end

  def index
  	@poissons = Poisson.all
  end

  private
  	def poisson_params
  		params.require(:poisson).permit(:occurances, :lambda)
  	end
end