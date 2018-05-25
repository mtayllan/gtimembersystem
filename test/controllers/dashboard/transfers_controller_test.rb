require 'test_helper'

class Dashboard::TransfersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_transfers_index_url
    assert_response :success
  end

end
