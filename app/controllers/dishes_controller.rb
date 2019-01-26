class DishesController < ApplicationController
  def restaurants
    dish = Dish.find(params[:id])
    restaurants = dish.restaurants
    render json: {
      restaurants: restaurants.map(&:serialize)
    }
  end
end
