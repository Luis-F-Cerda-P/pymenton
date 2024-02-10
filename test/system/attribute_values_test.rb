require 'application_system_test_case'

class AttributesTest < ApplicationSystemTestCase
  setup do
    @attribute = attributes(:one)
  end

  test 'visiting the index' do
    visit attributes_url
    assert_selector 'h1', text: 'Attributes'
  end

  test 'should create attribute' do
    visit attributes_url
    click_on 'New attribute'

    fill_in 'attribute type', with: @attribute.attribute_type_id
    fill_in 'Name', with: @attribute.name
    click_on 'Create attribute'

    assert_text 'attribute was successfully created'
    click_on 'Back'
  end

  test 'should update attribute' do
    visit attribute_url(@attribute)
    click_on 'Edit this attribute', match: :first

    fill_in 'attribute type', with: @attribute.attribute_type_id
    fill_in 'Name', with: @attribute.name
    click_on 'Update attribute'

    assert_text 'attribute was successfully updated'
    click_on 'Back'
  end

  test 'should destroy attribute' do
    visit attribute_url(@attribute)
    click_on 'Destroy this attribute', match: :first

    assert_text 'attribute was successfully destroyed'
  end
end
