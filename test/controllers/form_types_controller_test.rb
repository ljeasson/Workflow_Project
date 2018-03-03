require 'test_helper'

class FormTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_types_index_url
    assert_response :success
  end

  test "should get show" do
    get form_types_show_url
    assert_response :success
  end

  test "should get new" do
    get form_types_new_url
    assert_response :success
  end

  test "should get edit" do
    get form_types_edit_url
    assert_response :success
  end

  test "should get create" do
    get form_types_create_url
    assert_response :success
  end

  test "should get update" do
    get form_types_update_url
    assert_response :success
  end

  test "should get destroy" do
    get form_types_destroy_url
    assert_response :success
  end

end
