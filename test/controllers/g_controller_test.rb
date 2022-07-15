require "test_helper"

class GControllerTest < ActionDispatch::IntegrationTest
  test "should get user_challenges" do
    get g_user_challenges_url
    assert_response :success
  end
end
