require 'test_helper'

class ProjectsUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get projects_users_create_url
    assert_response :success
  end

end
