class IngredientsController < ApplicationController



  def new
    @recette = Recette.find(params[:recette_id])
    @ingredient = Ingredient.new
  end

   def create
    @recette = Recette.find(params[:recette_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recette = @recette
    if @recette.save
      redirect_to recette_path(@recette)
    else
      render "new"
    end
  end

  private

  def ingredient_params
    params.require(:dose).permit(:nom, :nombre, :unite, :recette_id)
  end

end
