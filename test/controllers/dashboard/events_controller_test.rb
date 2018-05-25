require 'test_helper'

class Dashboard::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_events_index_url
    assert_response :success
  end

end
