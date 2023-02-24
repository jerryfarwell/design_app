require "test_helper"

class DesignsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get designs_index_url
    assert_response :success
  end

  test "should get show" do
    get designs_show_url
    assert_response :success
  end

  test "should get new" do
    get designs_new_url
    assert_response :success
  end

  test "should get edit" do
    get designs_edit_url
    assert_response :success
  end
end
