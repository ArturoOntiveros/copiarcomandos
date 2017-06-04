require 'test_helper'

class NuevoControllerTest < ActionController::TestCase
  test "should get noticias" do
    get :noticias
    assert_response :success
  end

end
