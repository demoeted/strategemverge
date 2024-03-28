require "test_helper"

class ThermalPastesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thermal_pastes_index_url
    assert_response :success
  end

  test "should get show" do
    get thermal_pastes_show_url
    assert_response :success
  end
end
