require 'test_helper'

class DocumentationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentation_index_url
    assert_response :success
  end

  test "should get design" do
    get documentation_design_url
    assert_response :success
  end

  test "should get user_manual" do
    get documentation_user_manual_url
    assert_response :success
  end

  test "should get post_mortem" do
    get documentation_post_mortem_url
    assert_response :success
  end

  test "should get user_stories" do
    get documentation_user_stories_url
    assert_response :success
  end

end
