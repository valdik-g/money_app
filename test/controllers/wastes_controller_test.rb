require "test_helper"

class WastesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wastes_index_url
    assert_response :success
  end

  test "should get show" do
    get wastes_show_url
    assert_response :success
  end

  test "should get create" do
    get wastes_create_url
    assert_response :success
  end

  test "should get update" do
    get wastes_update_url
    assert_response :success
  end

  test "should get delete" do
    get wastes_delete_url
    assert_response :success
  end
end
