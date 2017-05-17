class ReviewsController < ApplicationController
  before_action :find_recipe

  def create
    @review = @recipe.reviews.new(review_params)
    @review.user = current_user
    @review.save

    if @review.save
      redirect_to recipe_path(@recipe)
    end
  end

  private
  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:grade, :comment)
  end
end
