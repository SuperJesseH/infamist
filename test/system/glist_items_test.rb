require "application_system_test_case"

class GlistItemsTest < ApplicationSystemTestCase
  setup do
    @glist_item = glist_items(:one)
  end

  test "visiting the index" do
    visit glist_items_url
    assert_selector "h1", text: "Glist Items"
  end

  test "creating a Glist item" do
    visit glist_items_url
    click_on "New Glist Item"

    click_on "Create Glist item"

    assert_text "Glist item was successfully created"
    click_on "Back"
  end

  test "updating a Glist item" do
    visit glist_items_url
    click_on "Edit", match: :first

    click_on "Update Glist item"

    assert_text "Glist item was successfully updated"
    click_on "Back"
  end

  test "destroying a Glist item" do
    visit glist_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glist item was successfully destroyed"
  end
end
