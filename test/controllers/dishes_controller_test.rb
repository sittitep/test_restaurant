require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_dish = dishes(:one)
    @first_restaurant = restaurants(:one)
  end

  test "should get restaurnts" do
    get restaurants_dish_url(id: @first_dish.id)
    assert_response :success

    expect = {"restaurants"=>[{"id"=>@first_restaurant.id, "name"=>@first_restaurant.name}]}
    assert_equal expect, JSON.parse(@response.body)
  end
end
