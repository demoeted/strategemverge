require "test_helper"

class MotherboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get motherboards_index_url
    assert_response :success
  end

  test "should get show" do
    get motherboards_show_url
    assert_response :success
  end
end
