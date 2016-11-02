require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get landingpage" do
    get :landingpage
    assert_response :success
  end

end
