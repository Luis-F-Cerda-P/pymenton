require "application_system_test_case"

class ContainerTypesTest < ApplicationSystemTestCase
  setup do
    @container_type = container_types(:one)
  end

  test "visiting the index" do
    visit container_types_url
    assert_selector "h1", text: "Container types"
  end

  test "should create container type" do
    visit container_types_url
    click_on "New container type"

    fill_in "Description", with: @container_type.description
    click_on "Create Container type"

    assert_text "Container type was successfully created"
    click_on "Back"
  end

  test "should update Container type" do
    visit container_type_url(@container_type)
    click_on "Edit this container type", match: :first

    fill_in "Description", with: @container_type.description
    click_on "Update Container type"

    assert_text "Container type was successfully updated"
    click_on "Back"
  end

  test "should destroy Container type" do
    visit container_type_url(@container_type)
    click_on "Destroy this container type", match: :first

    assert_text "Container type was successfully destroyed"
  end
end
