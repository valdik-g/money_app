require "test_helper"

class ProfitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profits_index_url
    assert_response :success
  end

  test "should get show" do
    get profits_show_url
    assert_response :success
  end

  test "should get create" do
    get profits_create_url
    assert_response :success
  end

  test "should get update" do
    get profits_update_url
    assert_response :success
  end

  test "should get delete" do
    get profits_delete_url
    assert_response :success
  end
end
