require 'test_helper'

class AddRestaurantIdToPlatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_restaurant_id_to_plate = add_restaurant_id_to_plates(:one)
  end

  test "should get index" do
    get add_restaurant_id_to_plates_url
    assert_response :success
  end

  test "should get new" do
    get new_add_restaurant_id_to_plate_url
    assert_response :success
  end

  test "should create add_restaurant_id_to_plate" do
    assert_difference('AddRestaurantIdToPlate.count') do
      post add_restaurant_id_to_plates_url, params: { add_restaurant_id_to_plate: { restaurant_id: @add_restaurant_id_to_plate.restaurant_id } }
    end

    assert_redirected_to add_restaurant_id_to_plate_url(AddRestaurantIdToPlate.last)
  end

  test "should show add_restaurant_id_to_plate" do
    get add_restaurant_id_to_plate_url(@add_restaurant_id_to_plate)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_restaurant_id_to_plate_url(@add_restaurant_id_to_plate)
    assert_response :success
  end

  test "should update add_restaurant_id_to_plate" do
    patch add_restaurant_id_to_plate_url(@add_restaurant_id_to_plate), params: { add_restaurant_id_to_plate: { restaurant_id: @add_restaurant_id_to_plate.restaurant_id } }
    assert_redirected_to add_restaurant_id_to_plate_url(@add_restaurant_id_to_plate)
  end

  test "should destroy add_restaurant_id_to_plate" do
    assert_difference('AddRestaurantIdToPlate.count', -1) do
      delete add_restaurant_id_to_plate_url(@add_restaurant_id_to_plate)
    end

    assert_redirected_to add_restaurant_id_to_plates_url
  end
end
