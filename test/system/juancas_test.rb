require "application_system_test_case"

class JuancasTest < ApplicationSystemTestCase
  setup do
    @juanca = juancas(:one)
  end

  test "visiting the index" do
    visit juancas_url
    assert_selector "h1", text: "Juancas"
  end

  test "should create juanca" do
    visit juancas_url
    click_on "New juanca"

    fill_in "Apellido", with: @juanca.apellido
    fill_in "Nombre", with: @juanca.nombre
    click_on "Create Juanca"

    assert_text "Juanca was successfully created"
    click_on "Back"
  end

  test "should update Juanca" do
    visit juanca_url(@juanca)
    click_on "Edit this juanca", match: :first

    fill_in "Apellido", with: @juanca.apellido
    fill_in "Nombre", with: @juanca.nombre
    click_on "Update Juanca"

    assert_text "Juanca was successfully updated"
    click_on "Back"
  end

  test "should destroy Juanca" do
    visit juanca_url(@juanca)
    click_on "Destroy this juanca", match: :first

    assert_text "Juanca was successfully destroyed"
  end
end
