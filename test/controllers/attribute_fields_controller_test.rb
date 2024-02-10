require 'test_helper'

class AttributeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attribute_type = attribute_types(:one)
  end

  test 'should get index' do
    get attribute_types_url
    assert_response :success
  end

  test 'should get new' do
    get new_attribute_type_url
    assert_response :success
  end

  test 'should create attribute_type' do
    assert_difference('AttributeType.count') do
      post attribute_types_url, params: { attribute_type: { name: @attribute_type.name } }
    end

    assert_redirected_to attribute_type_url(AttributeType.last)
  end

  test 'should show attribute_type' do
    get attribute_type_url(@attribute_type)
    assert_response :success
  end

  test 'should get edit' do
    get edit_attribute_type_url(@attribute_type)
    assert_response :success
  end

  test 'should update attribute_type' do
    patch attribute_type_url(@attribute_type), params: { attribute_type: { name: @attribute_type.name } }
    assert_redirected_to attribute_type_url(@attribute_type)
  end

  test 'should destroy attribute_type' do
    assert_difference('AttributeType.count', -1) do
      delete attribute_type_url(@attribute_type)
    end

    assert_redirected_to attribute_types_url
  end
end
