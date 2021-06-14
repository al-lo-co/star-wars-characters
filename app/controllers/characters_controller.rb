class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy, :fav, :request_destroy]

  def index
    unless params[:favs]
      @characters = Character.order(id: :asc).page(params[:page]).per(10)
    else
      @characters = Character.where(favorite: true).order(id: :asc).page(params[:page]).per(10)
    end
  end

  def show
  end

  def edit
  end

  def update
      if @character.update_attributes(character_params)
        redirect_to @character
      else
        render 'edit'
      end
  end

  def destroy
    if @character.destroy
      redirect_to characters_url
    else
      redirect_to characters_url
    end
  end

  def fav
    if @character.toggle_fav
      render 'show'
    else
      render 'index'
    end
  end

  def request_destroy
  end
  
  def request_update
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :gender, :skin_color, :hair_color, :height, :eye_color, :mass, :birth_year)
  end
  
  
  
end