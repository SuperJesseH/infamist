require "application_system_test_case"

class BlistsTest < ApplicationSystemTestCase
  setup do
    @blist = blists(:one)
  end

  test "visiting the index" do
    visit blists_url
    assert_selector "h1", text: "Blists"
  end

  test "creating a Blist" do
    visit blists_url
    click_on "New Blist"

    click_on "Create Blist"

    assert_text "Blist was successfully created"
    click_on "Back"
  end

  test "updating a Blist" do
    visit blists_url
    click_on "Edit", match: :first

    click_on "Update Blist"

    assert_text "Blist was successfully updated"
    click_on "Back"
  end

  test "destroying a Blist" do
    visit blists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blist was successfully destroyed"
  end
end
