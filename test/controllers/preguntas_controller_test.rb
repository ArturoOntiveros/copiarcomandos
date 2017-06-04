require 'test_helper'

class PreguntasControllerTest < ActionController::TestCase
  test "should get frecuentes" do
    get :frecuentes
    assert_response :success
  end

end
