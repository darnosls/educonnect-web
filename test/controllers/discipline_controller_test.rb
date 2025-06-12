require "test_helper"

class DisciplineControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get discipline_list_url
    assert_response :success
  end
end
