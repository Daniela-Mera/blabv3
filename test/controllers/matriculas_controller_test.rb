require "test_helper"

class MatriculasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matriculas_index_url
    assert_response :success
  end
end
