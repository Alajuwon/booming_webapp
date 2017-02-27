require 'test_helper'

class EpicenterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get epicenter_index_url
    assert_response :success
  end

  test "should get about" do
    get epicenter_about_url
    assert_response :success
  end

end
