require 'test_helper'

class DishTest < ActiveSupport::TestCase
  test "serailize" do
    assert_equal({id: 1, name: "test"}, Dish.new(id: 1, name: "test").serialize)
  end
end
