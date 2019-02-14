class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :edit, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @dose = Dose.new
    @cocktail = Cocktail.new(cocktail_params)
    @ingredients = Ingredient.all
    if @cocktail.save
    redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit

  end

  def update
    @cocktail = Cocktail.update(cocktail_params)

  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
