require 'test_helper'

class RecettesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recettes_new_url
    assert_response :success
  end

  test "should get create" do
    get recettes_create_url
    assert_response :success
  end

  test "should get show" do
    get recettes_show_url
    assert_response :success
  end

  test "should get index" do
    get recettes_index_url
    assert_response :success
  end

  test "should get edit" do
    get recettes_edit_url
    assert_response :success
  end

  test "should get update" do
    get recettes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recettes_destroy_url
    assert_response :success
  end

end
