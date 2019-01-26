require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "serailize" do
    assert_equal({id: 1, name: "test"}, Restaurant.new(id: 1, name: "test").serialize)
  end
end
