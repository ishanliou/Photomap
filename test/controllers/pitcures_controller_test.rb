require 'test_helper'

class PitcuresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pitcures_index_url
    assert_response :success
  end

  test "should get show" do
    get pitcures_show_url
    assert_response :success
  end

  test "should get new" do
    get pitcures_new_url
    assert_response :success
  end

  test "should get create" do
    get pitcures_create_url
    assert_response :success
  end

  test "should get edit" do
    get pitcures_edit_url
    assert_response :success
  end

  test "should get update" do
    get pitcures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pitcures_destroy_url
    assert_response :success
  end

end
