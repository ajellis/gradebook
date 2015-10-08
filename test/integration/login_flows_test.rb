require 'test_helper'

class LoginFlowsTest < ActionDispatch::IntegrationTest
  test "login page works" do
    get teachers_path
    assert_redirected_to login_path
    follow_redirect!
    assert_template "new"
  end
end
