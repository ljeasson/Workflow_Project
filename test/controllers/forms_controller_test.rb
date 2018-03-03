require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get user_index" do
    get forms_user_index_url
    assert_response :success
  end

  test "should get admin_index" do
    get forms_admin_index_url
    assert_response :success
  end

  test "should get create" do
    get forms_create_url
    assert_response :success
  end

  test "should get new" do
    get forms_new_url
    assert_response :success
  end

  test "should get edit" do
    get forms_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get forms_destroy_url
    assert_response :success
  end

end
