require 'test_helper'

class TipoprestamosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
