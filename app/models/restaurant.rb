class Restaurant < ApplicationRecord
  has_many :restaurant_dishes
  has_many :dishes, through: :restaurant_dishes
end
