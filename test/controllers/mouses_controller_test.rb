require "test_helper"

class MousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mouses_index_url
    assert_response :success
  end

  test "should get show" do
    get mouses_show_url
    assert_response :success
  end
end
