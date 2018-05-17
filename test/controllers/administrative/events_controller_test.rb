require 'test_helper'

class Administrative::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrative_events_index_url
    assert_response :success
  end

end
