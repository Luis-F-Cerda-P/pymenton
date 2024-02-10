require "application_system_test_case"

class AttributeFieldsTest < ApplicationSystemTestCase
  setup do
    @attribute_field = attribute_fields(:one)
  end

  test "visiting the index" do
    visit attribute_fields_url
    assert_selector "h1", text: "Attribute fields"
  end

  test "should create attribute field" do
    visit attribute_fields_url
    click_on "New attribute field"

    fill_in "Name", with: @attribute_field.name
    click_on "Create Attribute field"

    assert_text "Attribute field was successfully created"
    click_on "Back"
  end

  test "should update Attribute field" do
    visit attribute_field_url(@attribute_field)
    click_on "Edit this attribute field", match: :first

    fill_in "Name", with: @attribute_field.name
    click_on "Update Attribute field"

    assert_text "Attribute field was successfully updated"
    click_on "Back"
  end

  test "should destroy Attribute field" do
    visit attribute_field_url(@attribute_field)
    click_on "Destroy this attribute field", match: :first

    assert_text "Attribute field was successfully destroyed"
  end
end
