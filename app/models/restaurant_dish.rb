class RestaurantDish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish

  validates :dish_id, uniqueness: { scope: :restaurant_id }
end
