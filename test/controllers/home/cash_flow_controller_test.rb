require 'test_helper'

class Home::CashFlowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_cash_flow_index_url
    assert_response :success
  end

end
