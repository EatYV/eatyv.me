class ReservationsController < ApplicationController
  before_action :find_recipe

  def create
    @reservation = @recipe.reservations.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.price = @recipe.price
    if @reservation.persons == nil
      @reservation.persons = 0
    end
    @reservation.final_price = @reservation.persons * @recipe.price
    @reservation.save

    if @reservation.save
      redirect_to recipe_path(@recipe)
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
