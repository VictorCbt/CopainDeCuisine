class RecettesController < ApplicationController
  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(recettes_strong_params)
    @recette.user = current_user
    if @recette.save
    puts"recette créer"
    else render 'new'
    end
  end

  def show
    @recette = Recette.find(params[:id])
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def recettes_strong_params
    params.require(:recette).permit(:titre, :description, :lienUrl, :variante, :astuce, :univers, :typeplat, :photo, :commentaire, :duree, :cuisson, :note, :difficulte )
  end

end
