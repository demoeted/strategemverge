require "test_helper"

class KeyboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get keyboards_index_url
    assert_response :success
  end

  test "should get show" do
    get keyboards_show_url
    assert_response :success
  end
end
