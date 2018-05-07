require 'test_helper'

class GlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glist = glists(:one)
  end

  test "should get index" do
    get glists_url
    assert_response :success
  end

  test "should get new" do
    get new_glist_url
    assert_response :success
  end

  test "should create glist" do
    assert_difference('Glist.count') do
      post glists_url, params: { glist: {  } }
    end

    assert_redirected_to glist_url(Glist.last)
  end

  test "should show glist" do
    get glist_url(@glist)
    assert_response :success
  end

  test "should get edit" do
    get edit_glist_url(@glist)
    assert_response :success
  end

  test "should update glist" do
    patch glist_url(@glist), params: { glist: {  } }
    assert_redirected_to glist_url(@glist)
  end

  test "should destroy glist" do
    assert_difference('Glist.count', -1) do
      delete glist_url(@glist)
    end

    assert_redirected_to glists_url
  end
end
