class ReservationsController < ApplicationController
  before_action :find_recipe

  def create
    @reservation = @recipe.reservations.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.price = @recipe.price
    @reservation.save

    if @reservation.save
      redirect_to recipe_path(@recipe)
    else
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end
  end

  private
  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def reservation_params
    params.require(:reservation).permit(:first_name, :last_name, :persons, :time, :message)
  end
end
