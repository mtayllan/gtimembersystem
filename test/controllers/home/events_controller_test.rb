require 'test_helper'

class Home::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_events_index_url
    assert_response :success
  end

end
