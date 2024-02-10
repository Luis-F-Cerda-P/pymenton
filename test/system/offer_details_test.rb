require "application_system_test_case"

class OfferDetailsTest < ApplicationSystemTestCase
  setup do
    @offer_detail = offer_details(:one)
  end

  test "visiting the index" do
    visit offer_details_url
    assert_selector "h1", text: "Offer details"
  end

  test "should create offer detail" do
    visit offer_details_url
    click_on "New offer detail"

    fill_in "Offer", with: @offer_detail.offer_id
    fill_in "Product", with: @offer_detail.product_id
    click_on "Create Offer detail"

    assert_text "Offer detail was successfully created"
    click_on "Back"
  end

  test "should update Offer detail" do
    visit offer_detail_url(@offer_detail)
    click_on "Edit this offer detail", match: :first

    fill_in "Offer", with: @offer_detail.offer_id
    fill_in "Product", with: @offer_detail.product_id
    click_on "Update Offer detail"

    assert_text "Offer detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Offer detail" do
    visit offer_detail_url(@offer_detail)
    click_on "Destroy this offer detail", match: :first

    assert_text "Offer detail was successfully destroyed"
  end
end
