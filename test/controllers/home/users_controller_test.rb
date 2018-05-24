require 'test_helper'

class Home::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_users_index_url
    assert_response :success
  end

end
