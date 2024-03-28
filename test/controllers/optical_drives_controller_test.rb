require "test_helper"

class OpticalDrivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get optical_drives_index_url
    assert_response :success
  end

  test "should get show" do
    get optical_drives_show_url
    assert_response :success
  end
end
