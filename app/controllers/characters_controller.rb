class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update]

  def index
    @characters = Character.all
  end

  def edit
  end

  def show
    @powers = Power.where(character_id: params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.save
    redirect_to characters_path
  end

  def update
    if @character.update(character_params)
      redirect_to @character, notice: 'character was successfully updated.'
    else
      render :edit
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :photo)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end
