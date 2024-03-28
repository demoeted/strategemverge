require "test_helper"

class CaseFansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get case_fans_index_url
    assert_response :success
  end

  test "should get show" do
    get case_fans_show_url
    assert_response :success
  end
end
