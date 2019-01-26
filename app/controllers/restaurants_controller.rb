class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: {
      restaurants: restaurants.map(&:serialize)
    }
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: {
      restaurants: [
        restaurant.serialize
      ]
    }
  end

  def dishes
    restaurant = Restaurant.find(params[:id])
    dishes = restaurant.dishes
    render json: {
      dishes: dishes.map(&:serialize)
    }
  end
end
