class DonutsController < ApplicationController
  def index
    @donuts = Donut.all
  end

  def show
    @donut = Donut.find(params[:id])
  end

  def new
    @donut = Donut.new
  end

  def create
    @donut = Donut.new(donut_params)
    if @donut.save
      redirect_to donuts_path
    else
      byebug
      render :new
    end
  end

  private

  def donut_params
    params.require(:donut).permit(:shape, :flavour, :price)
  end
end

