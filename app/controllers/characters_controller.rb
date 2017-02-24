class CharactersController < ApplicationController

  def index
    @characters = Character.all
    redirect_to house_characters_path
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def update
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to house_character_path(@house, @character)
  end

  def create
    @character = Character.create!(character_params)
    redirect_to house_character_path(@character.house)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to house_path(@character.house)
  end

  private
  def character_params
    params.require(:character).permit(:name, :img_url, :house_id)
  end

end
