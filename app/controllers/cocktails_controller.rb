class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :create]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    cocktail.save

    redirect_to cocktail_path(cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :address, :stars)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
