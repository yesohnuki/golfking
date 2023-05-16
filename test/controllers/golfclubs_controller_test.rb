require "test_helper"

class GolfclubsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get golfclubs_new_url
    assert_response :success
  end

  test "should get index" do
    get golfclubs_index_url
    assert_response :success
  end

  test "should get show" do
    get golfclubs_show_url
    assert_response :success
  end

  test "should get edit" do
    get golfclubs_edit_url
    assert_response :success
  end
end
