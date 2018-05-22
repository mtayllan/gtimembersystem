require 'test_helper'

class Administrative::ProjectsControllerTest < ActionDispatch::IntegrationTest
	
  test "should get index" do
    get administrative_projects_index_url
    assert_response :success
  end

end
