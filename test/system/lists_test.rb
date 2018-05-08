require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
  end

  test "visiting the index" do
    visit lists_url
    assert_selector "h1", text: "lists"
  end

  test "creating a List" do
    visit lists_url
    click_on "New List"

    click_on "Create List"

    assert_text "List was successfully created"
    click_on "Back"
  end

  test "updating a List" do
    visit lists_url
    click_on "Edit", match: :first

    click_on "Update List"

    assert_text "List was successfully updated"
    click_on "Back"
  end

  test "destroying a Glist" do
    visit glists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "List was successfully destroyed"
  end
end