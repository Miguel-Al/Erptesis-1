require "test_helper"

class SInicioControllerTest < ActionDispatch::IntegrationTest
  test "should get S_factura" do
    get s_inicio_S_factura_url
    assert_response :success
  end

  test "should get S_resumen" do
    get s_inicio_S_resumen_url
    assert_response :success
  end

  test "should get S_Info" do
    get s_inicio_S_Info_url
    assert_response :success
  end
end
