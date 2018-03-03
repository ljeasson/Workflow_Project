require 'test_helper'

class FormTemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get form_template_show_url
    assert_response :success
  end

  test "should get new" do
    get form_template_new_url
    assert_response :success
  end

  test "should get edit" do
    get form_template_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get form_template_destroy_url
    assert_response :success
  end

end
