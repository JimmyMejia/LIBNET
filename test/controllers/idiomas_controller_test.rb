require 'test_helper'

class IdiomasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
