require 'application_system_test_case'

class AttributeTypesTest < ApplicationSystemTestCase
  setup do
    @attribute_type = attribute_types(:one)
  end

  test 'visiting the index' do
    visit attribute_types_url
    assert_selector 'h1', text: 'attribute types'
  end

  test 'should create attribute type' do
    visit attribute_types_url
    click_on 'New attribute type'

    fill_in 'Name', with: @attribute_type.name
    click_on 'Create attribute type'

    assert_text 'attribute type was successfully created'
    click_on 'Back'
  end

  test 'should update attribute type' do
    visit attribute_type_url(@attribute_type)
    click_on 'Edit this attribute type', match: :first

    fill_in 'Name', with: @attribute_type.name
    click_on 'Update attribute type'

    assert_text 'attribute type was successfully updated'
    click_on 'Back'
  end

  test 'should destroy attribute type' do
    visit attribute_type_url(@attribute_type)
    click_on 'Destroy this attribute type', match: :first

    assert_text 'attribute type was successfully destroyed'
  end
end
