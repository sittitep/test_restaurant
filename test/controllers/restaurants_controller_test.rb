require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_restaurant = restaurants(:one)
    @second_restaurant = restaurants(:two)
    @first_dish = dishes(:one)
  end


  test "should get index" do
    get restaurants_url
    assert_response :success

    expect = {"restaurants"=>[{"id"=>@first_restaurant.id, "name"=>@first_restaurant.name}, {"id"=>@second_restaurant.id, "name"=>@second_restaurant.name}]}
    assert_equal expect, JSON.parse(@response.body)
  end

  test "should get show" do
    get restaurant_url(id: @first_restaurant.id)
    assert_response :success

    expect = {"restaurants"=>[{"id"=>@first_restaurant.id, "name"=>@first_restaurant.name}]}
    assert_equal expect, JSON.parse(@response.body)
  end

  test "should get dishes" do
    get dishes_restaurant_url(id: @first_restaurant.id)
    assert_response :success

    expect = {"dishes"=>[{"id"=>@first_dish.id, "name"=>@first_dish.name}]}
    assert_equal expect, JSON.parse(@response.body)
  end
end
