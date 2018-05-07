require 'test_helper'

class BlistItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blist_item = blist_items(:one)
  end

  test "should get index" do
    get blist_items_url
    assert_response :success
  end

  test "should get new" do
    get new_blist_item_url
    assert_response :success
  end

  test "should create blist_item" do
    assert_difference('BlistItem.count') do
      post blist_items_url, params: { blist_item: {  } }
    end

    assert_redirected_to blist_item_url(BlistItem.last)
  end

  test "should show blist_item" do
    get blist_item_url(@blist_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_blist_item_url(@blist_item)
    assert_response :success
  end

  test "should update blist_item" do
    patch blist_item_url(@blist_item), params: { blist_item: {  } }
    assert_redirected_to blist_item_url(@blist_item)
  end

  test "should destroy blist_item" do
    assert_difference('BlistItem.count', -1) do
      delete blist_item_url(@blist_item)
    end

    assert_redirected_to blist_items_url
  end
end
