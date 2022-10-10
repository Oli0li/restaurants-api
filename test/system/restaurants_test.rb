require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit restaurants_path

    assert_selector ".arrElem", count: Restaurant.count
  end
end
