require "test_helper"

class CpuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cpu_index_url
    assert_response :success
  end

  test "should get show" do
    get cpu_show_url
    assert_response :success
  end
end
