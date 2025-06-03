require "test_helper"

class DisciplinaControllerTest < ActionDispatch::IntegrationTest
  test "should get listar" do
    get disciplina_listar_url
    assert_response :success
  end
end
