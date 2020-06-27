class ReviewsController < ApplicationController

def new
  @recette = Recette.find(params[:recette_id])
  @review = Review.new
end

def create
@review = Review.new(reviews_params)
@recette = Recette.find(params[:recette_id])
@review.recette = @recette_id
@review.user = current_user
  if @review.save
    redirect_to recette_path(@recette)
  else render 'new'
  end
end

private

def reviews_params
  params.require(:review).permit(:commentaire, :note)

end


end
