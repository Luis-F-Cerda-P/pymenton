require "test_helper"

class OrderContactMechanismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_contact_mechanism = order_contact_mechanisms(:one)
  end

  test "should get index" do
    get order_contact_mechanisms_url
    assert_response :success
  end

  test "should get new" do
    get new_order_contact_mechanism_url
    assert_response :success
  end

  test "should create order_contact_mechanism" do
    assert_difference("OrderContactMechanism.count") do
      post order_contact_mechanisms_url, params: { order_contact_mechanism: { contact_mechanism_id: @order_contact_mechanism.contact_mechanism_id, order_id: @order_contact_mechanism.order_id } }
    end

    assert_redirected_to order_contact_mechanism_url(OrderContactMechanism.last)
  end

  test "should show order_contact_mechanism" do
    get order_contact_mechanism_url(@order_contact_mechanism)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_contact_mechanism_url(@order_contact_mechanism)
    assert_response :success
  end

  test "should update order_contact_mechanism" do
    patch order_contact_mechanism_url(@order_contact_mechanism), params: { order_contact_mechanism: { contact_mechanism_id: @order_contact_mechanism.contact_mechanism_id, order_id: @order_contact_mechanism.order_id } }
    assert_redirected_to order_contact_mechanism_url(@order_contact_mechanism)
  end

  test "should destroy order_contact_mechanism" do
    assert_difference("OrderContactMechanism.count", -1) do
      delete order_contact_mechanism_url(@order_contact_mechanism)
    end

    assert_redirected_to order_contact_mechanisms_url
  end
end
