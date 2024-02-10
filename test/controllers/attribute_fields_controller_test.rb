require "test_helper"

class AttributeFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attribute_field = attribute_fields(:one)
  end

  test "should get index" do
    get attribute_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_attribute_field_url
    assert_response :success
  end

  test "should create attribute_field" do
    assert_difference("AttributeField.count") do
      post attribute_fields_url, params: { attribute_field: { name: @attribute_field.name } }
    end

    assert_redirected_to attribute_field_url(AttributeField.last)
  end

  test "should show attribute_field" do
    get attribute_field_url(@attribute_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_attribute_field_url(@attribute_field)
    assert_response :success
  end

  test "should update attribute_field" do
    patch attribute_field_url(@attribute_field), params: { attribute_field: { name: @attribute_field.name } }
    assert_redirected_to attribute_field_url(@attribute_field)
  end

  test "should destroy attribute_field" do
    assert_difference("AttributeField.count", -1) do
      delete attribute_field_url(@attribute_field)
    end

    assert_redirected_to attribute_fields_url
  end
end
