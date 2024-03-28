require "test_helper"

class ComputerMonitorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get computer_monitor_index_url
    assert_response :success
  end

  test "should get show" do
    get computer_monitor_show_url
    assert_response :success
  end
end
