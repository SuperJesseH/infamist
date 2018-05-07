require "application_system_test_case"

class GlistsTest < ApplicationSystemTestCase
  setup do
    @glist = glists(:one)
  end

  test "visiting the index" do
    visit glists_url
    assert_selector "h1", text: "Glists"
  end

  test "creating a Glist" do
    visit glists_url
    click_on "New Glist"

    click_on "Create Glist"

    assert_text "Glist was successfully created"
    click_on "Back"
  end

  test "updating a Glist" do
    visit glists_url
    click_on "Edit", match: :first

    click_on "Update Glist"

    assert_text "Glist was successfully updated"
    click_on "Back"
  end

  test "destroying a Glist" do
    visit glists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glist was successfully destroyed"
  end
end
