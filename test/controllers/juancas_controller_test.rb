require "test_helper"

class JuancasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @juanca = juancas(:one)
  end

  test "should get index" do
    get juancas_url
    assert_response :success
  end

  test "should get new" do
    get new_juanca_url
    assert_response :success
  end

  test "should create juanca" do
    assert_difference("Juanca.count") do
      post juancas_url, params: { juanca: { apellido: @juanca.apellido, nombre: @juanca.nombre } }
    end

    assert_redirected_to juanca_url(Juanca.last)
  end

  test "should show juanca" do
    get juanca_url(@juanca)
    assert_response :success
  end

  test "should get edit" do
    get edit_juanca_url(@juanca)
    assert_response :success
  end

  test "should update juanca" do
    patch juanca_url(@juanca), params: { juanca: { apellido: @juanca.apellido, nombre: @juanca.nombre } }
    assert_redirected_to juanca_url(@juanca)
  end

  test "should destroy juanca" do
    assert_difference("Juanca.count", -1) do
      delete juanca_url(@juanca)
    end

    assert_redirected_to juancas_url
  end
end
