require "test_helper"

class VideocardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videocards_index_url
    assert_response :success
  end

  test "should get show" do
    get videocards_show_url
    assert_response :success
  end
end
