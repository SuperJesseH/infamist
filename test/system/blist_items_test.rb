require "application_system_test_case"

class BlistItemsTest < ApplicationSystemTestCase
  setup do
    @blist_item = blist_items(:one)
  end

  test "visiting the index" do
    visit blist_items_url
    assert_selector "h1", text: "Blist Items"
  end

  test "creating a Blist item" do
    visit blist_items_url
    click_on "New Blist Item"

    click_on "Create Blist item"

    assert_text "Blist item was successfully created"
    click_on "Back"
  end

  test "updating a Blist item" do
    visit blist_items_url
    click_on "Edit", match: :first

    click_on "Update Blist item"

    assert_text "Blist item was successfully updated"
    click_on "Back"
  end

  test "destroying a Blist item" do
    visit blist_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blist item was successfully destroyed"
  end
end
