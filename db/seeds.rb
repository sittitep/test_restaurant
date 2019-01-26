# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
  Dish.create(name: "dish_#{n}")
end

5.times do |n|
  Restaurant.create(name: "restaurant_#{n}")
end

dish_ids = Dish.ids
Restaurant.find_each do |restaurant|
  3.times do
    restaurant.restaurant_dishes.create(dish_id: dish_ids.sample)
  end
end
