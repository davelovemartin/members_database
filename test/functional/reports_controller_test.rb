require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get labels" do
    get :labels
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
