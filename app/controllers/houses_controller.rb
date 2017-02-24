class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @character = Character.new
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
  end

  def create
    @house = House.create!(house_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
  end

  private
  def house_params
    params.require(:house).permit(:name, :slogan, :img_url)
  end

end
