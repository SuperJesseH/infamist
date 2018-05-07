require 'test_helper'

class BlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blist = blists(:one)
  end

  test "should get index" do
    get blists_url
    assert_response :success
  end

  test "should get new" do
    get new_blist_url
    assert_response :success
  end

  test "should create blist" do
    assert_difference('Blist.count') do
      post blists_url, params: { blist: {  } }
    end

    assert_redirected_to blist_url(Blist.last)
  end

  test "should show blist" do
    get blist_url(@blist)
    assert_response :success
  end

  test "should get edit" do
    get edit_blist_url(@blist)
    assert_response :success
  end

  test "should update blist" do
    patch blist_url(@blist), params: { blist: {  } }
    assert_redirected_to blist_url(@blist)
  end

  test "should destroy blist" do
    assert_difference('Blist.count', -1) do
      delete blist_url(@blist)
    end

    assert_redirected_to blists_url
  end
end
