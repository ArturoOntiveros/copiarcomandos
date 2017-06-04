require 'test_helper'

class CulturaControllerTest < ActionController::TestCase
  test "should get cronologia" do
    get :cronologia
    assert_response :success
  end

end
