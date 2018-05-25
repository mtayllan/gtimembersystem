require 'test_helper'

class Dashboard::ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_projects_index_url
    assert_response :success
  end

end
