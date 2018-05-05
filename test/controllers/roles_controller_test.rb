require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get roles_new_url
    assert_response :success
  end

  test "should get create" do
    get roles_create_url
    assert_response :success
  end

  test "should get destroy" do
    get roles_destroy_url
    assert_response :success
  end

  test "should get update" do
    get roles_update_url
    assert_response :success
  end

end