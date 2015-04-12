require 'test_helper'

class ListControllerTest < ActionController::TestCase
  test "should get users" do
    get :users
    assert_response :success
  end

  test "should get audios" do
    get :audios
    assert_response :success
  end

end
