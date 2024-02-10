require "test_helper"

class OfferDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_detail = offer_details(:one)
  end

  test "should get index" do
    get offer_details_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_detail_url
    assert_response :success
  end

  test "should create offer_detail" do
    assert_difference("OfferDetail.count") do
      post offer_details_url, params: { offer_detail: { offer_id: @offer_detail.offer_id, product_id: @offer_detail.product_id } }
    end

    assert_redirected_to offer_detail_url(OfferDetail.last)
  end

  test "should show offer_detail" do
    get offer_detail_url(@offer_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_detail_url(@offer_detail)
    assert_response :success
  end

  test "should update offer_detail" do
    patch offer_detail_url(@offer_detail), params: { offer_detail: { offer_id: @offer_detail.offer_id, product_id: @offer_detail.product_id } }
    assert_redirected_to offer_detail_url(@offer_detail)
  end

  test "should destroy offer_detail" do
    assert_difference("OfferDetail.count", -1) do
      delete offer_detail_url(@offer_detail)
    end

    assert_redirected_to offer_details_url
  end
end
