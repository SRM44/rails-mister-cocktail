class DosesController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.new(ingredient_params)
    ingredient.save

    redirect_to ingredient_path(ingredient)
  end

  def delete
    @ingredient.destroy
    redirect_to cocktails_path
  end
end
