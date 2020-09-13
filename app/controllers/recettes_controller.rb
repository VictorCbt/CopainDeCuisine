class RecettesController < ApplicationController
  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(recettes_strong_params)
    @recette.user = current_user
    if @recette.save
      redirect_to recette_path(@recette)
    else
      render 'new'
    end
  end

  def show
    @recette = Recette.find(params[:id])
  end

  def index

   if params[:query].present?
      sql_query = "titre ILIKE :query OR univers ILIKE :query"
      @recettes = Recette.where(sql_query, query: "%#{params[:query]}%")

    else
      @recettes = Recette.all.order('created_at DESC')

    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recettes_strong_params
    params.require(:recette).permit(:titre, :description, :lienUrl, :variante, :astuce, :typeplat, :commentaire, :duree, :cuisson, :note, :difficulte, :photo, univers: []  )
  end


end
