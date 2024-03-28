require "test_helper"

class PowersuppliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get powersupplies_index_url
    assert_response :success
  end

  test "should get show" do
    get powersupplies_show_url
    assert_response :success
  end
end
