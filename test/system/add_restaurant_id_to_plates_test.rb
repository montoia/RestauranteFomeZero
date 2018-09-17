require "application_system_test_case"

class AddRestaurantIdToPlatesTest < ApplicationSystemTestCase
  setup do
    @add_restaurant_id_to_plate = add_restaurant_id_to_plates(:one)
  end

  test "visiting the index" do
    visit add_restaurant_id_to_plates_url
    assert_selector "h1", text: "Add Restaurant Id To Plates"
  end

  test "creating a Add restaurant id to plate" do
    visit add_restaurant_id_to_plates_url
    click_on "New Add Restaurant Id To Plate"

    fill_in "Restaurant", with: @add_restaurant_id_to_plate.restaurant_id
    click_on "Create Add restaurant id to plate"

    assert_text "Add restaurant id to plate was successfully created"
    click_on "Back"
  end

  test "updating a Add restaurant id to plate" do
    visit add_restaurant_id_to_plates_url
    click_on "Edit", match: :first

    fill_in "Restaurant", with: @add_restaurant_id_to_plate.restaurant_id
    click_on "Update Add restaurant id to plate"

    assert_text "Add restaurant id to plate was successfully updated"
    click_on "Back"
  end

  test "destroying a Add restaurant id to plate" do
    visit add_restaurant_id_to_plates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add restaurant id to plate was successfully destroyed"
  end
end
