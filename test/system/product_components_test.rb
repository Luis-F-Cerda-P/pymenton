require "application_system_test_case"

class ProductComponentsTest < ApplicationSystemTestCase
  setup do
    @product_component = product_components(:one)
  end

  test "visiting the index" do
    visit product_components_url
    assert_selector "h1", text: "Product components"
  end

  test "should create product component" do
    visit product_components_url
    click_on "New product component"

    fill_in "Date from", with: @product_component.date_from
    fill_in "Date thru", with: @product_component.date_thru
    fill_in "Good", with: @product_component.good_id
    fill_in "Quantity", with: @product_component.quantity
    click_on "Create Product component"

    assert_text "Product component was successfully created"
    click_on "Back"
  end

  test "should update Product component" do
    visit product_component_url(@product_component)
    click_on "Edit this product component", match: :first

    fill_in "Date from", with: @product_component.date_from
    fill_in "Date thru", with: @product_component.date_thru
    fill_in "Good", with: @product_component.good_id
    fill_in "Quantity", with: @product_component.quantity
    click_on "Update Product component"

    assert_text "Product component was successfully updated"
    click_on "Back"
  end

  test "should destroy Product component" do
    visit product_component_url(@product_component)
    click_on "Destroy this product component", match: :first

    assert_text "Product component was successfully destroyed"
  end
end
