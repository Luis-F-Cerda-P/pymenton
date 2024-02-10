require "test_helper"

class TransportationOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transportation_order = transportation_orders(:one)
  end

  test "should get index" do
    get transportation_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_transportation_order_url
    assert_response :success
  end

  test "should create transportation_order" do
    assert_difference("TransportationOrder.count") do
      post transportation_orders_url, params: { transportation_order: { person_id: @transportation_order.person_id, transportation_type_id: @transportation_order.transportation_type_id } }
    end

    assert_redirected_to transportation_order_url(TransportationOrder.last)
  end

  test "should show transportation_order" do
    get transportation_order_url(@transportation_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_transportation_order_url(@transportation_order)
    assert_response :success
  end

  test "should update transportation_order" do
    patch transportation_order_url(@transportation_order), params: { transportation_order: { person_id: @transportation_order.person_id, transportation_type_id: @transportation_order.transportation_type_id } }
    assert_redirected_to transportation_order_url(@transportation_order)
  end

  test "should destroy transportation_order" do
    assert_difference("TransportationOrder.count", -1) do
      delete transportation_order_url(@transportation_order)
    end

    assert_redirected_to transportation_orders_url
  end
end
