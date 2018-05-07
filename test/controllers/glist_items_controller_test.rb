require 'test_helper'

class GlistItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glist_item = glist_items(:one)
  end

  test "should get index" do
    get glist_items_url
    assert_response :success
  end

  test "should get new" do
    get new_glist_item_url
    assert_response :success
  end

  test "should create glist_item" do
    assert_difference('GlistItem.count') do
      post glist_items_url, params: { glist_item: {  } }
    end

    assert_redirected_to glist_item_url(GlistItem.last)
  end

  test "should show glist_item" do
    get glist_item_url(@glist_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_glist_item_url(@glist_item)
    assert_response :success
  end

  test "should update glist_item" do
    patch glist_item_url(@glist_item), params: { glist_item: {  } }
    assert_redirected_to glist_item_url(@glist_item)
  end

  test "should destroy glist_item" do
    assert_difference('GlistItem.count', -1) do
      delete glist_item_url(@glist_item)
    end

    assert_redirected_to glist_items_url
  end
end
